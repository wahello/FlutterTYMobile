import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/features/resource_export.dart'
    show FontSize, Themes, networkImageBuilder;
import 'package:flutter_ty_mobile/features/route_page_export.dart'
    show Global, localeStr;
import 'package:flutter_ty_mobile/features/subfeatures/deposit/data/entity/payment_enum.dart';
import 'package:url_launcher/url_launcher.dart';

class PaymentTutorial extends StatelessWidget {
  final List tutorialData;

  PaymentTutorial({this.tutorialData});

  final double dialogHeight = Global.device.height * 0.85;
  // screen width - dialog padding
  final double dialogWidth = Global.device.width - 32;
  // screen width - dialog padding - stack padding - text padding
  final double contentWidth = Global.device.width - 32 - 20 - 8;

  @override
  Widget build(BuildContext context) {
    Duration insetAnimationDuration = const Duration(milliseconds: 100);
    Curve insetAnimationCurve = Curves.decelerate;

    String title = tutorialData[0] ?? localeStr.depositPaymentTitleTutorial;
    List<PaymentTutorialItem> tutorialItems = tutorialData[1];
    print('tutorial items: ${tutorialItems.length}');

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
            child: Container(
              constraints: BoxConstraints(
                minWidth: dialogWidth,
                maxWidth: dialogWidth,
                minHeight: dialogHeight / 4,
                maxHeight: dialogHeight,
              ),
              child: IntrinsicHeight(
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 10.0, 12.0, 8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                                Text(
                                  title,
                                  style: TextStyle(
                                    fontSize: FontSize.TITLE.value,
                                    color: Themes.dialogTitleColor,
                                  ),
                                ),
                                SizedBox(height: 6.0),
                              ] +
                              _buildTutorial(context, tutorialItems),
                        ),
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
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildTutorial(
    BuildContext context,
    List<PaymentTutorialItem> tutorialItems,
  ) {
    List<Widget> list = new List();
    tutorialItems.forEach((item) {
      switch (item.type) {
        case TutorialItemType.Desc:
          list.add(Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            child: Text(
              item.value,
              maxLines: 5,
              overflow: TextOverflow.visible,
            ),
          ));
          break;
        case TutorialItemType.Image:
          list.add(Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
            child: networkImageBuilder(item.value, fill: true, debug: true),
          ));
          break;
        case TutorialItemType.Button:
          list.add(Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: RaisedButton(
              child: Text(item.value),
              color: Themes.defaultAccentColor,
              textColor: Themes.defaultTextColorBlack,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
              visualDensity: VisualDensity.standard,
              onPressed: () async {
                switch (item.sortId) {
                  case 81:
                    await launch(
                        'https://www.gamewallet.asia/version.php?fn=gp_a&latest');
//                RouterNavigate.navigateToPage(
//                  RoutePage.depositWeb,
//                  arg: 'https://www.gamewallet.asia/version.php?fn=gp_a&latest',
//                );
//                Navigator.pop(context);
                    break;
                  case 82:
                    await launch('https://www.vip66729.com/pdf/cpw.pdf');
                    break;
                }
              },
            ),
          ));
          break;
      }
    });
    return list;
  }
}
