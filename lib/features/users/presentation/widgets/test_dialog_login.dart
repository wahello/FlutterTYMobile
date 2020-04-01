import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/features/resource_export.dart' show Themes;
import 'package:flutter_ty_mobile/features/route_page_export.dart' show Global;

class TestDialogField extends StatelessWidget {
  TestDialogField();

  final double dialogHeight = Global.device.height * 0.85;
  // screen width - dialog padding
  final double dialogWidth = Global.device.width - 32;
  // screen width - dialog padding - stack padding - text padding
  final double contentWidth = Global.device.width - 32 - 20 - 8;

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
                            SizedBox(height: 24.0),
                            TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.keyboard),
                                labelText: "Test Field",
                              ),
                            ),
                          ],
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
}
