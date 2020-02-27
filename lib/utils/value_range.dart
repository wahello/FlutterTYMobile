/// Check if the [value] is bigger than [min], and smaller than [max]
bool rangeCheck(num value, int min, {int max = 0}) {
  if (max != 0)
    return value >= min && value <= max;
  else
    return value >= min;
}
