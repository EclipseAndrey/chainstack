extension SafeClamp on double {
  double safeClamp(double min, double max) => safeClampA(toDouble(), min, max);
}

double safeClampA(double value, double min, double max) {
  if (min > max) return max;
  return value.clamp(min, max);
}
