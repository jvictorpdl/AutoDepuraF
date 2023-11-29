extension StringToDouble on String {
  double? get asDouble {
    if (isEmpty) return null;
    if (contains(",")) return double.parse(replaceAll(",", "."));
    return double.parse(this);
  }
}
