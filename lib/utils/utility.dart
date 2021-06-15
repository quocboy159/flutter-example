import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/constants/commons.dart';

class Utilities {
  static String formatCurrency(
      {dynamic value, String? locale = "en_US", String? symbol = "\$"}) {
    return NumberFormat.currency(locale: locale, symbol: symbol).format(value);
  }

  static Future<void> selectDateTime(
      {required BuildContext context,
      required TextEditingController controller,
      DateTime? firstDate,
      DateTime? lastDate}) async {
    final DateTime now = new DateTime.now();

    DateTime? date = await showDatePicker(
        context: context,
        initialDate: new DateTime(now.year, now.month, now.day - 1),
        firstDate: firstDate ?? new DateTime(now.year - 100),
        lastDate: lastDate ?? new DateTime(now.year, now.month, now.day));

    controller.text =
        date != null ? DateFormat(DEFAULT_FORMAT_DATE).format(date) : "";
  }
}
