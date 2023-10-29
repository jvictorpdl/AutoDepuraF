extension StringToDouble on String {
  double? get asDouble {
    if (isEmpty) return null;
    print(contains("."));
    if (contains(".")) double.parse(replaceAll(".", ""));
    return double.parse(this);
  }
}
