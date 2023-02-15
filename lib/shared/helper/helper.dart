import 'package:intl/intl.dart';

class Helper {
  static priceFormat(
      {required int number,
      String? locale = 'en_US',
      String? symbol = '\$',
      int? decimalDigit = 2}) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: locale,
      symbol: symbol,
      decimalDigits: decimalDigit,
    );
    return currencyFormatter.format(number);
  }
}
