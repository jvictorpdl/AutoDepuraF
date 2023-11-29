extension DoubleToInputText on double? {
  String get toText => this?.toString().replaceAll(".", ",") ?? "";
}
