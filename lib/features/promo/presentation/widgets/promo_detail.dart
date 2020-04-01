import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/error/failures.dart';
import 'package:flutter_ty_mobile/features/general/bloc_widget_export.dart'
    show ToastError;
import 'package:flutter_ty_mobile/features/promo/data/models/promo_freezed.dart'
    show PromoEntity;
import 'package:flutter_ty_mobile/features/resource_export.dart'
    show Themes, HexColor;
import 'package:flutter_ty_mobile/features/route_page_export.dart'
    show Global, MyLogger, localeStr;
import 'package:webview_flutter/webview_flutter.dart';

/// Show promo detail in [WebView]
/// [promo] = detail view data
class PromoDetail extends StatefulWidget {
  final PromoEntity promo;

  PromoDetail(this.promo);

  @override
  _PromoDetailState createState() => _PromoDetailState();
}

class _PromoDetailState extends State<PromoDetail> {
  final double dialogWidth = Global.device.width - 24;
  final double dialogHeight = Global.device.height - 32;

  final String htmlBgColor = Themes.dialogBgColor.toHexNoAlpha();
  final String htmlTextColor = Themes.dialogTextColor.toHexNoAlpha();
  final String htmlTitleColor = Themes.dialogTitleColor.toHexNoAlpha();
  final String htmlBorderColor = Themes.defaultDisabledColor.toHexNoAlpha();

  WebViewController _controller;
  double _viewHeight;
  double _viewMinHeight;
  bool _viewReady = false;
  String _htmlContent = '';

  @override
  void initState() {
    _viewMinHeight = dialogHeight / 3;
    _viewHeight = _viewMinHeight;
    print('height max: $dialogHeight, min:$_viewMinHeight');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Duration insetAnimationDuration = const Duration(milliseconds: 100);
    Curve insetAnimationCurve = Curves.decelerate;
    return AnimatedPadding(
      padding: MediaQuery.of(context).viewInsets +
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      duration: insetAnimationDuration,
      curve: insetAnimationCurve,
      child: MediaQuery.removeViewInsets(
        removeLeft: true,
        removeTop: true,
        removeRight: true,
        removeBottom: true,
        context: context,
        child: Center(
          child: Material(
            // round corner view
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2.0)),
            ),
            color: Themes.dialogBgColor,
            child: FutureBuilder(
                future: _buildHtmlText(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done &&
                      snapshot.hasError == false) {
                    return Container(
                      // dynamic view height that depends on web view scroll's height
                      height: _viewHeight,
                      constraints: BoxConstraints.tightFor(width: dialogWidth),
                      color: Themes.dialogBgColor,
                      child: IndexedStack(
                        // show loading when web page is not ready
                        index: _viewReady ? 1 : 0,
                        children: <Widget>[
                          Center(child: CircularProgressIndicator()),
                          Stack(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    4.0, 8.0, 4.0, 6.0),
                                child: WebView(
                                  javascriptMode: JavascriptMode.unrestricted,
                                  onWebViewCreated:
                                      (WebViewController controller) async {
                                    _controller = controller;
                                    _controller.loadUrl(Uri.dataFromString(
                                      _htmlContent,
                                      mimeType: Global.WEB_MIMETYPE,
                                      encoding: Global.webEncoding,
                                    ).toString());
                                  },
                                  onPageFinished: (_) async {
                                    if (!_viewReady) {
                                      // set container height when web page was loaded
                                      double height = double.parse(
                                          await _controller.evaluateJavascript(
                                              "document.documentElement.scrollHeight;"));
                                      setState(() {
                                        _viewHeight = (height > dialogHeight)
                                            ? dialogHeight
                                            : (height < _viewMinHeight)
                                                ? _viewMinHeight
                                                : height;
                                        print('view height: $_viewHeight');
                                      });
                                      // set to true when ready to change ui widget
                                      _viewReady = true;
                                    }
                                  },
                                ),
                              ),
                              Positioned(
                                right: 2.0,
                                child: IconButton(
                                  icon: Icon(Icons.close),
                                  onPressed: () => Navigator.pop(context),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  } else if (snapshot.hasError) {
                    MyLogger.error(msg: snapshot.error, tag: 'Promo Detail');
                    return ToastError(message: Failure.internal().message);
                  } else {
                    return SizedBox.shrink();
                  }
                }),
          ),
        ),
      ),
    );
  }

  Future<void> _buildHtmlText() async {
    var detail = await Future.wait([
      _htmlPromoPlatform(),
      _htmlPromoContent(),
      _htmlPromoApply(),
      _htmlPromoRules(),
    ]).then((list) => list.join('<br>'));

    _htmlContent = '<html>'
        '<head><meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"></head>'
        '<body bgcolor="$htmlBgColor" text="$htmlTextColor" style="line-height:1.2;">'
        '$detail'
        '</html>';
//        '<html><body bgcolor="$htmlBgColor" text="$htmlTextColor" style="line-height:1.5; font-size:85%;">\n$detail</html>';

//    Future.delayed(Duration(seconds: 3),
//        () => htmlContent.split('\n').forEach((str) => print(str)));
  }

  Future<String> _htmlPromoPlatform() async {
    StringBuffer buffer = StringBuffer();
    buffer.write('<h3><font color=\"$htmlTitleColor\">');
    buffer.write(localeStr.promoDetailPlatform);
    buffer.write('</font></h3>');
    buffer.write('<p>');
    buffer.write(widget.promo.textContent);
    buffer.write('</p>');
    return Future.value(buffer.toString());
  }

  Future<String> _htmlPromoContent() async {
    StringBuffer buffer = StringBuffer();
    buffer.write('<h3><font color=\"$htmlTitleColor\">');
    buffer.write(localeStr.promoDetailContent);
    buffer.write('</font></h3>');
    buffer.write(widget.promo.placeContent);
//    var bufferStr = buffer.toString();
//    if (bufferStr.endsWith('<p>&nbsp;</p>')) {
//      int pos = bufferStr.lastIndexOf('<p>&nbsp;</p>');
//      return Future.value(bufferStr.substring(0, pos));
//    }
    return Future.value(buffer.toString().replaceAll('<p>&nbsp;</p>', ''));
  }

  Future<String> _htmlPromoApply() async {
    StringBuffer buffer = StringBuffer();
    buffer.write('<h3><font color=\"$htmlTitleColor\">');
    buffer.write(localeStr.promoDetailApply);
    buffer.write('</font></h3>');
    buffer.write('<p>');
    buffer.write(widget.promo.applyContent);
    buffer.write('</p>');
    return Future.value(buffer.toString());
  }

  Future<String> _htmlPromoRules() async {
    StringBuffer buffer = StringBuffer();
    buffer.write("<h3><font color=\"$htmlTitleColor\">");
    buffer.write(localeStr.promoDetailRules);
    buffer.write("</font></h3>");
    buffer.write("<p>");
    buffer.write(widget.promo.ruleContent);
    buffer.write("</p>");
    return Future.value(buffer.toString());
  }
}
