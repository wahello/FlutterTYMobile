import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/internal/global.dart';
import 'package:flutter_ty_mobile/features/screen/web_game_screen_store.dart';
import 'package:flutter_ty_mobile/injection_container.dart';
import 'package:flutter_ty_mobile/mylogger.dart';
import 'package:flutter_ty_mobile/utils/string_util.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebGameScreen extends StatefulWidget {
  final String startUrl;

  WebGameScreen({this.startUrl = 'https://eg990.com/'});

  @override
  _WebGameScreenState createState() => _WebGameScreenState();
}

class _WebGameScreenState extends State<WebGameScreen> {
  WebViewController _controller;
  WebGameScreenStore _store;

  bool isForm = false;
  String parsedHtml;

  @override
  void initState() {
    print('web url: ${widget.startUrl}');
    // to hide only bottom bar:
//    SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.top]);
    // to hide only status bar:
//    SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.bottom]);
    // to hide both:
//    SystemChrome.setEnabledSystemUIOverlays([]);
    // to restore
//    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    _store ??= sl.get<WebGameScreenStore>();

    isForm =
        widget.startUrl.isHtmlFormat && widget.startUrl.contains('</form>');
    print('web url is form: $isForm');
    if (isForm) rewriteHtml(widget.startUrl);

    super.initState();
    _store.initSensorStream();
//    _store.getCredit('');
  }

  ///
  /// Used in BB games
  ///
  void rewriteHtml(String htmlStr) {
    String formStr =
        htmlStr.substring(htmlStr.indexOf('<form'), htmlStr.indexOf('</form>'));
    formStr = formStr.substring(0, formStr.indexOf('>'));
    String formName = formStr
        .substring(formStr.indexOf('name='), formStr.indexOf(' method='))
        .replaceAll('\'', '');
    print('form button id: $formName');

    parsedHtml = htmlStr.replaceAll(
        '</head>',
        '<script type="text/javascript">' +
            'function submitForm() { document.$formName.submit(); }' +
            'setTimeout(submitForm, 300);' +
            '</script>' +
            '</head>');
    print('rewrite html form complete');
    print(parsedHtml);
  }

  @override
  void dispose() async {
    MyLogger.debug(msg: 'dispose web game screen', tag: 'WebGameScreen');
    // edit the source code in FlutterWebView
    // (under external lib -> webview_flutter -> android
    // -> src.main -> java.io.flutter.plugins.webviewflutter)
//    @Override
//    public void dispose() {
//    if(webView != null){
//    webView.clearCache(true);
//    webView.removeAllViews();
//    }
//    methodChannel.setMethodCallHandler(null);
//    webView.dispose();
//    webView.destroy();
//    }
//    /// Load empty page and clear cache
//    await _store.stopSensor();
//    _controller.loadUrl(Uri.dataFromString(
//      '',
//      mimeType: Global.WEB_MIMETYPE,
//      encoding: Global.webEncoding,
//    ).toString());
//    await _controller.clearCache();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        child: WebView(
          initialUrl: widget.startUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) async {
            _controller = controller;
            _store.bindController(_controller);
            if (isForm) {
              _controller.loadUrl(Uri.dataFromString(
                parsedHtml,
                mimeType: Global.WEB_MIMETYPE,
                encoding: Global.webEncoding,
              ).toString());
            } else if (widget.startUrl.isUrl == false) {
              _controller.loadUrl(Uri.dataFromString(
                widget.startUrl,
                mimeType: Global.WEB_MIMETYPE,
                encoding: Global.webEncoding,
              ).toString());
            }
          },
          onPageFinished: (String url) async {
            print('web page loaded: $url');
            if (url.isUrl == false) return;
            if (isForm) isForm = false;

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
        ),
        onWillPop: () async {
          MyLogger.debug(msg: 'pop web game screen', tag: 'WebGameScreen');
          return Future(() => true);
        },
      ),
    );
  }
}
