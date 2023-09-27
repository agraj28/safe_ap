import 'dart:convert';
import 'dart:io';
import 'package:intl/intl.dart';
import 'package:safe_ap/resources/values/constants.dart';


import 'log_util.dart';

class CommonUtils {
  /// direct copy of 'package:flutter/foundation.dart' so that no need to import it
  static String describeEnum(Object enumEntry) {
    final description = enumEntry.toString();
    final indexOfDot = description.indexOf('.');
    assert(indexOfDot != -1 && indexOfDot < description.length - 1);
    return description.substring(indexOfDot + 1);
  }

  static String enumName(String enumToString) {
    var paths = enumToString.split('.');
    return paths[paths.length - 1];
  }
}

extension StringX on String {
  bool containsIgnoreCase(String stringToMatch) {
    return toLowerCase().contains(stringToMatch.toLowerCase());
  }

  bool hasValidData() {
    return trim().isNotEmpty;
  }

  String getSafeData() {
    return hasValidData() ? this : '';
  }

  bool get isNullOrEmpty => !hasValidData();

  Iterable<String> toIterable() sync* {
    for (var i = 0; i < length; i++) {
      yield (this[i]);
    }
  }

  /// Same as contains, but allows for case insensitive searching
  ///
  /// [caseInsensitive] defaults to false
  bool containsX(String string, {bool caseInsensitive = false}) {
    if (caseInsensitive) {
      // match even if case doesn't match
      return toLowerCase().contains(string.toLowerCase());
    } else {
      return contains(string);
    }
  }

  String substringUntil(Pattern occurrence) {
    final index = indexOf(occurrence);
    if (index == -1) {
      return this;
    }
    return substring(0, index);
  }

  String toLowerCaseNoSpaces() => toLowerCase().replaceAll(' ', '');
}

extension ListEmptyValidation<E> on Iterable<E> {
  bool hasData() => isNotEmpty;
}

String getLNPayloadString(
    String notificationDomain, Map<String, dynamic> data) {
  var domain = {
    'name': notificationDomain,
    'data': data,
  };
  var _mapResponse = <String, dynamic>{
    'notification_domain': Platform.isIOS ? notificationDomain : domain,
    'data': json.encode(data)
  };
  return json.encode(_mapResponse);
}



/// function to get properly comma separated currency from
/// non-comma separated numerical string ex:'500000.23' gives
/// '5,00,000.23'
String getFormattedCurrency(String? price) {
  if (price == null) {
    return Constants.zero;
  }
  try {
    var formattedAmount =
        NumberFormat('#,##,##0.00').format(double.parse(price));
    return formattedAmount;
  } on Exception catch (exception) {
    LogUtil().printLog(message: exception.toString());
    return price;
  }
}

/// function to get properly comma separated currency from
/// non-comma separated string containing unit ex:'AED 500000.23' gives
/// 'AED 5,00,000.23'\
String getFormattedCurrencyWithUnit(String? price) {
  if (price == null) {
    return Constants.zero;
  }
  try {
    var priceList = price.split(' ');
    if (priceList.length != 2) {
      return price;
    }
    var currency = priceList[0];
    var amount = priceList[1];
    var formattedAmount = getFormattedCurrency(amount);
    return '$currency $formattedAmount';
  } on Exception catch (_) {
    return price;
  }
}
