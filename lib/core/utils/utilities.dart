import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

class Utilities {

  ///format currency
  static String formatAmount({double amount, bool addDecimal = true}) {
    final oCcy = addDecimal ? NumberFormat('#,##0.00', 'en_US') : NumberFormat('#,##0', 'en_US');
    final formattedAmount = oCcy.format(amount);
    return formattedAmount;
  }
}
