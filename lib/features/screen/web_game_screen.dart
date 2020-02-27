import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemChrome;
import 'package:webview_flutter/webview_flutter.dart';

class WebGameScreen extends StatefulWidget {
  final String startUrl;

  WebGameScreen({this.startUrl = 'https://eg990.com/'});

  @override
  _WebGameScreenState createState() => _WebGameScreenState();
}

class _WebGameScreenState extends State<WebGameScreen> {
  @override
  void initState() {
    // to hide only bottom bar:
//    SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.top]);
    // to hide only status bar:
//    SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.bottom]);
    // to hide both:
    SystemChrome.setEnabledSystemUIOverlays([]);
    // to restore
//    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.initState();
//    _store.getCredit('');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: WebView(
      initialUrl: widget.startUrl,
      javascriptMode: JavascriptMode.unrestricted,
    ));
  }
}
