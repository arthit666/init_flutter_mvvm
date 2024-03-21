extension StringUtil on String {
  String getLocaleText() {
    switch (this) {
      case 'en':
        return 'English';
      case 'th':
        return 'ไทย';
      default:
        return '';
    }
  }
}

extension StringOptionalUtil on String? {
  bool isBlank() {
    return this == null || this == '';
  }
}
