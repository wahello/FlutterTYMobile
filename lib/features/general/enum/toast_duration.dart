import 'package:generic_enum/generic_enum.dart';

class ToastDuration extends GenericEnum<Duration> {
  const ToastDuration._(Duration value) : super(value);

  /// duration = 1500ms
  static const ToastDuration SHORT =
      ToastDuration._(Duration(milliseconds: 1500));

  /// duration = 3000ms
  static const ToastDuration DEFAULT =
      ToastDuration._(Duration(milliseconds: 3000));

  /// duration = 5000ms
  static const ToastDuration LONG =
      ToastDuration._(Duration(milliseconds: 5000));
}
