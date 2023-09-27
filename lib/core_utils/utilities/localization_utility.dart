import 'package:flutter/cupertino.dart';
import 'package:safe_ap/resources/values/constants.dart';


class LanguageLocalization {
  LanguageLocalization();

  bool isArabicLang(BuildContext context) {
    late var lang = Localizations.localeOf(context).languageCode;
    if (lang == Constants.kArabic) {
      return true;
    } else {
      return false;
    }
  }
}
