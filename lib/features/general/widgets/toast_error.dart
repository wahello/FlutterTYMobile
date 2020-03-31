import 'package:flui/flui.dart' show FLToast;
import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/features/general/enum/toast_duration.dart';

/// Show toast as child widget
///@author H.C.CHIANG
///@version 2020/2/17
class ToastError extends StatelessWidget {
  final String message;
  final bool waitLong;

  ToastError({@required this.message, this.waitLong = false});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 200))
        .then((value) => FLToast.showError(
              text: message,
              showDuration: (waitLong)
                  ? ToastDuration.LONG.value
                  : ToastDuration.DEFAULT.value,
            ));
    return SizedBox.shrink();
  }
}
