import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/internal/global.dart';
import 'package:flutter_ty_mobile/core/internal/local_strings.dart';
import 'package:flutter_ty_mobile/core/internal/themes.dart';
import 'package:flutter_ty_mobile/features/general/toast_widget_export.dart';
import 'package:mobx/mobx.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../features/member/data/repository/member_repository.dart';
import '../../injection_container.dart';
import '../../utils/string_util.dart' show StringVerifyExtension;
import '../web/state/web_route_store.dart';

class WebRoute extends StatefulWidget {
  final String startUrl;

  const WebRoute({@required this.startUrl});

  @override
  _WebRouteState createState() => _WebRouteState();
}

class _WebRouteState extends State<WebRoute> {
  WebRouteStore _store;
  List<ReactionDisposer> _disposers;

  WebViewController _controller;
  num _stackToView = 1;

  @override
  void initState() {
    _store ??= WebRouteStore(sl.get<MemberRepository>());
    // to hide only bottom bar:
//    SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.top]);
    // to hide only status bar:
//    SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.bottom]);
    // to hide both:
//    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
//    _store.getCredit('');
  }

  @override
  void didUpdateWidget(WebRoute oldWidget) {
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
    _disposers ??= [
      reaction(
        // Observe in page
        // Tell the reaction which observable to observe
        (_) => _store.errorMessage,
        // Run some logic with the content of the observed field
        (String message) {
          if (message != null && message.isNotEmpty) {
            Future.delayed(Duration(milliseconds: 200))
                .then((value) => FLToast.showError(
                      text: message,
                      showDuration: ToastDuration.DEFAULT.value,
                    ));
          }
        },
      ),
    ];
  }

  @override
  void dispose() {
    _disposers.forEach((d) => d());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('opening url: ${widget.startUrl}');
    Future.delayed(Duration(seconds: 15), () {
      if (_stackToView == 1) {
        _controller.loadUrl(
            Uri.dataFromString(localeStr.messageErrorLoadingPay).toString());
      }
    });
    return IndexedStack(
      index: _stackToView,
      children: <Widget>[
        Container(
          child: WebView(
//            initialUrl: widget.startUrl,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController controller) async {
              _controller = controller;
              _controller.loadUrl(widget.startUrl);
            },
            onPageStarted: (String url) {
              print('start loading: $url');
            },
            onPageFinished: (String url) async {
              if (_stackToView == 1) {
                setState(() {
                  _stackToView = 0;
                });
              }

              print('web page loaded: $url');
              if (url.isUrl == false) return;

              String pageTitle = await _controller.getTitle();
              print('web page title: $pageTitle');
              //TODO check the normal page title or 404
              // Error 500 Title: 500 Internal Server Error
              if (pageTitle.contains('Error') ||
                  pageTitle.contains('Exception')) {
                if (pageTitle.startsWith('500')) {
                  _controller.loadUrl(Uri.dataFromString(
                    pageTitle,
                    mimeType: Global.WEB_MIMETYPE,
                    encoding: Global.webEncoding,
                  ).toString());
                }
              }
            },
            javascriptChannels: <JavascriptChannel>[
              _toasterJavascriptChannel(context),
            ].toSet(),
          ),
        ),
        Container(
          color: Themes.defaultBackgroundColor,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ],
    );
  }

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          print('JS channel: $message');
          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }
}
