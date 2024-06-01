
import 'package:intl/intl.dart';

class TFormatter {
  
  static String formatDate(DateTime? date)
  {
    date ??=DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_US',symbol:'\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber){
    //Assuming a 10-digit US phone number format: (123) 456-7890
    if(phoneNumber.length==10){
      return '(${phoneNumber.substring(0,3)}) ${phoneNumber.substring(3,6)} ${phoneNumber.substring(6)}';
    }else if(phoneNumber.length==11){
      return '(${phoneNumber.substring(0,4)}) ${phoneNumber.substring(4,7)} ${phoneNumber.substring(7)}';
    }
    //Add more custom phone number formatting logic for different formats if needed
    return phoneNumber;
  }

  //Not fully tested
static String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters from the phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Determine the country code length
    int countryCodeLength = 1;
    if (digitsOnly.length > 1 && digitsOnly.startsWith('1')) {
      countryCodeLength = 1;
    } else if (digitsOnly.length > 1) {
      countryCodeLength = 2;
    }

    // Extract the country code from the digitsOnly
    String countryCode = '+${digitsOnly.substring(0, countryCodeLength)}';
    digitsOnly = digitsOnly.substring(countryCodeLength);

    // Add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('$countryCode ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 3;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }
      int end = i + groupLength;
      if (end > digitsOnly.length) {
        end = digitsOnly.length;
      }
      formattedNumber.write(digitsOnly.substring(i, end));
      
      if (end < digitsOnly.length) {
        formattedNumber.write('-');
      }
      i = end;
    }

    return formattedNumber.toString();
  }
}