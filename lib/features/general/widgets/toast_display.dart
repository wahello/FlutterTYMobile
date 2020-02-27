import 'package:flui/flui.dart' show FLToast;
import 'package:flutter/material.dart';
import 'package:generic_enum/generic_enum.dart';

/// Show toast as child widget
///@author H.C.CHIANG
///@version 2020/2/17
class ToastDisplay extends StatelessWidget {
  final String message;
  final bool waitLong;

  ToastDisplay({@required this.message, this.waitLong = false});

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

class ToastDuration extends GenericEnum<Duration> {
  const ToastDuration._(Duration value) : super(value);

  /// duration = 2500ms
  static const ToastDuration DEFAULT =
      ToastDuration._(Duration(milliseconds: 3000));

  /// duration = 4000ms
  static const ToastDuration LONG =
      ToastDuration._(Duration(milliseconds: 5000));
}
