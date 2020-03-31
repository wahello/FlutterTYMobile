import 'package:flui/flui.dart' show FLToast, FLToastPosition;
import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/features/general/enum/toast_duration.dart';

/// Show toast as child widget
///@author H.C.CHIANG
///@version 2020/2/17
class ToastMessage extends StatelessWidget {
  final String message;
  final bool waitLong;

  ToastMessage({@required this.message, this.waitLong = false});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 200))
        .then((value) => FLToast.showText(
              text: message,
              position: FLToastPosition.bottom,
              showDuration: (waitLong)
                  ? ToastDuration.LONG.value
                  : ToastDuration.DEFAULT.value,
            ));
    return SizedBox.shrink();
  }
}
