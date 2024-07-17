
import 'package:intl/intl.dart';

class TDeviceUtils {
  // Currency formatting for Tunisian Dinar (TND)
  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'ar_TN', symbol: 'TND').format(amount);
  }

  // Phone number formatting for Tunisia
  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 8) {
      return '${phoneNumber.substring(0, 2)} ${phoneNumber.substring(2, 5)} ${phoneNumber.substring(5)}';
    }
    return phoneNumber;
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+216') { 
        groupLength = 3;
      }

      int end = i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }
      i = end;
    }
    return formattedNumber.toString();
  }
}
