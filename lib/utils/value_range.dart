import 'package:meta/meta.dart' show required;

/// Check if the [value] is bigger than [min], and smaller than [max]
bool rangeCheck({@required num value, @required int min, int max = 0}) {
  if (max != 0)
    return value >= min && value <= max;
  else
    return value >= min;
}
