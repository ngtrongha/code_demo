import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
export 'package:get/get.dart';
export 'extensions/string_extension.dart';
export 'extensions/widget_extension.dart';

class Utils {
  static String dateToString(String format, DateTime time) {
    return DateFormat(format, Get.locale?.languageCode ?? 'vi').format(time);
  }

  static String moneyFormat(price, {String? symbol, int? decimal}) {
    return CurrencyFormatter.format(
      price,
      CurrencyFormatterSettings(
        symbol: symbol ?? 'vnđ',
        symbolSide: SymbolSide.right,
        thousandSeparator: '.',
      ),
      decimal: decimal ?? 0,
    );
  }

  unfocusScreen(context) {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}
