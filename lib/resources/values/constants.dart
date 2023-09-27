class Constants {
  static const String authHeaderKey = 'Authorization';
  static const String active = 'Active';
  static const String gracePeriod = 'OnBBBGraceperiod';
  static const String pending = 'Pending';
  static const String electronics = 'ELECTRONICS';
  static const String bbCompleted = 'BBCompleted';
  static const String sold = 'Sold';
  static const String extend = 'EXTEND';
  static const String redeal = 'REDEAL';
  static const String email = 'Email';
  static const String reload = 'RELOAD';
  static const String unnamedRoad = 'Unnamed Road';
  static const String defaultCurrency = 'AED';
  static const String invalidData = 'InvalidData';
  static const String data = 'data';

  static const String tryAgain = 'Try Again';
  static const String underConstruction = 'Under Construction';
  static const String zero = '0';
  static const String one = '1';
  static const String two = '2';
  static const String three = '3';
  static const String four = '4';
  static const String uponFour = '/4';
  static const String brand = 'Brand';
  static const String model = 'Model';
  static const String sell = 'SELL';
  static const String buyback = 'BUYBACK';
  static const String buybackWithin = 'Buyback within';
  static const String days = 'days';
  static const String year = 'year';
  static const String submitSelection = 'Submit Selection';

  static const String success = 'Success';

  static String location = 'Update your location';
  static const kPaymentCancelUrl =
      'https://dev.asancash.com/en/ae/users/Item-details/';
  static const kPaymentSuccessFailureUrl =
      'https://dev.asancash.com/en/ae/users/Item-details?data=';
  static const kPaymentStatus = '&paymentStatus=';

  //In case of invalid range error in regex place - at last to avoid it
  static const kPasswordAllowedRegex = '[a-zA-Z0-9()!@#\$&*~]';
  static const kCantFindItemFieldAllowedRegex = '[a-zA-Z0-9.\'#@%&/+ -]';
  static const kAddressFieldAllowedRegex = '[a-zA-Z0-9.\'#@%&/ -]';

  static const kArabic = 'ar';
  static const kEnglish = 'en';

  static const kTokenErrorStatusCode = 1000;
  static const kTokenErrorStatusMessage = 'refreshTokenExpired';

  static const kNameKey = 'customer_name';
  static const kEmailKey = 'customer_email';
  static const kPhoneKey = 'customer_phone';
}
