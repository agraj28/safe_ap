class Constants {
  static const String authHeaderKey = 'Authorization';
  static const String zero = '0';
  static const String one = '1';
  static const String two = '2';
  static const String three = '3';
  static const String four = '4';

  //In case of invalid range error in regex place - at last to avoid it
  static const kPasswordAllowedRegex = '[a-zA-Z0-9()!@#\$&*~]';
  static const kCantFindItemFieldAllowedRegex = '[a-zA-Z0-9.\'#@%&/+ -]';
  static const kAddressFieldAllowedRegex = '[a-zA-Z0-9.\'#@%&/ -]';

  static const kArabic = 'ar';
  static const kEnglish = 'en';

  static const kTokenErrorStatusCode = 1000;

}
