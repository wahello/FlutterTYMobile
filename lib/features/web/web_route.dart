import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/features/member/data/repository/member_repository.dart';
import 'package:flutter_ty_mobile/features/web/state/web_route_store.dart';
import 'package:mobx/mobx.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../widget_res_export.dart' show RouterNavigate, sl;

class WebRoute extends StatefulWidget {
  final String startUrl;

  const WebRoute({@required this.startUrl});

  @override
  _WebRouteState createState() => _WebRouteState();
}

class _WebRouteState extends State<WebRoute> {
  WebRouteStore _store;
  List<ReactionDisposer> _disposers;

  String _descText;

  void changeDesc(String desc) {
    setState(() {
      _descText = desc;
    });
  }

  void refresh() {
    print('pressed refresh');
    setState(() {
      _store.getDesc();
    });
  }

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
        (String message) => changeDesc(message),
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
    return Container(
        child: WebView(
      initialUrl: widget.startUrl,
      javascriptMode: JavascriptMode.unrestricted,
    )
//      Observer(
//        // Observe using specific widget
//        builder: (_) {
//          switch (_store.state) {
//            case WebRouteStoreState.initial:
//              return BlankWidget();
//            case WebRouteStoreState.loading:
//              return LoadingWidget();
//            case WebRouteStoreState.loaded:
//              _descText = _store.desc;
//              return MessageDisplay(message: _descText);
//            default:
//              return SizedBox.shrink();
//          }
//        },
//      ),
        );
  }
}
