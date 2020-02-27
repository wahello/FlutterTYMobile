import 'package:generic_enum/generic_enum.dart';

class FontSize extends GenericEnum<double> {
  const FontSize._(double value) : super(value);

  /// font size = 12
  static const FontSize SMALL = FontSize._(12.0);

  /// font size = 14
  static const FontSize NORMAL = FontSize._(14.0);

  /// font size = 16
  static const FontSize SUBTITLE = FontSize._(16.0);

  /// font size = 18
  static const FontSize MESSAGE = FontSize._(18.0);

  /// font size = 20
  static const FontSize TITLE = FontSize._(20.0);

  /// font size = 24
  static const FontSize HEADER = FontSize._(24.0);

  /// font size = 28
  static const FontSize LARGE = FontSize._(28.0);
}
