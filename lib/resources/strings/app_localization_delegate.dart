import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class AppLocalization {
  Locale? locale;
  static AppLocalization? _instance;
  late Map<String, String> _sentences;
  AppLocalization._();

  static AppLocalization get getInstance =>
      _instance = _instance ?? AppLocalization._();

  // ignore: use_setters_to_change_properties
  void setLocale(Locale locale) {
    this.locale = locale;
  }

  Future<bool> load() async {
    _sentences = <String, String>{};
    // parse common json data
    await parseJson('${locale?.languageCode}.json');
    return true;
  }

  // Future<bool> load() async {
  //   _sentences = <String, String>{};
  //
  //   // parse common json data
  //   await parseJson('${locale?.languageCode}.json');
  //
  //   // parse all domain specific json data
  //   for (var domain in getSupportedDomains()) {
  //     var domainName = ServiceHelper.getInstance.getDomainName(domain);
  //
  //     if (domainName != null && domainName.isNotEmpty) {
  //       await parseJson('${domainName}_${locale?.languageCode}.json');
  //     }
  //   }
  //
  //   return true;
  // }

  Future<void> parseJson(String fileName) async {
    // reading json
    var data = await _loadAsset('locale/i18n_$fileName');
    if (data != null) {
      Map<String, dynamic> _result = json.decode(data);
      // adding values to [_sentences]
      _result.forEach((String key, dynamic value) {
        _sentences[key] = value.toString();
      });
    }
  }

  Future<String?> _loadAsset(String key) async {
    try {
      return await rootBundle.loadString(key);
    } on FlutterError catch (_) {
      return null;
    }
  }

  String? text(String key) {
    if (!_sentences.containsKey(key)) return '$key not found';
    return _sentences[key];
  }

}


class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization>{

  const AppLocalizationDelegate();

  static final _supportedLanguage = [
    'en',
  ];
  static const _supportedLocales = [
    Locale('en'),
  ];

  static List<Locale> get supportedLocales => _supportedLocales;

  @override
  bool isSupported(Locale locale) => _supportedLanguage.contains(locale.languageCode);

  @override
  Future<AppLocalization> load(Locale locale) async {
    var localizations = AppLocalization.getInstance;
    localizations.setLocale(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalization> old) => false;

}