import 'package:flutter/material.dart';


class StringNumberOperator {
  //MARK: Numbers
  /* You can convert a string into an integer or double with the parse() methods of int and double, respectively: */
  void numberParse() {
    debugPrint('numberParse running...');
    assert(int.parse('42') == 42);
    assert(int.parse('0x42') == 66);
    assert(double.parse('0.50') == 0.5);

    /* Or use the parse() method of num, which creates an integer if possible and otherwise a double: */
    assert(num.parse('42') is int);
    assert(num.parse('0x42') is int);
    assert(num.parse('0.50') is double);

    /* To specify the base of an integer, add a radix parameter: */
    assert(int.parse('42', radix: 16) == 66);

    /* Use the toString() method to convert an int or double to a string. To specify the number of digits to the right of the decimal, use toStringAsFixed().
     To specify the number of significant digits in the string, use toStringAsPrecision(): */

    // Convert an int to a string.
    assert(42.toString() == '42');

    // Convert a double to a string.
    assert(123.456.toString() == '123.456');

    // Specify the number of digits after the decimal.
    assert(123.456789.toStringAsFixed(2) == '123.46');

    // Specify the number of significant figures.
    assert(123.456.toStringAsPrecision(2) == '1.2e+2');
    assert(double.parse('1.2e+2') == 120.0);

    //MARK: Strings and regular expressions

    // Check whether a string contains another string.
    assert('Never odd or even'.contains('odd'));

    // Does a string start with another string?
    assert('Never odd or even'.startsWith('Never'));

    // Does a string end with another string?
    assert('Never odd or even'.endsWith('even'));

    // Find the location of a string inside a string.
    assert('Never odd or even'.indexOf('odd') == 6);

    // Extracting data from a string

    // Grab a substring.
    assert('Never odd or even'.substring(6, 9) == 'odd');

    // Split a string using a string pattern.
    var parts = 'progressive web apps'.split(' ');
    assert(parts.length == 3);
    assert(parts[0] == 'progressive');

    // Get a UTF-16 code unit (as a string) by index.
    assert('Never odd or even'[0] == 'N');

    // Use split() with an empty string parameter to get
    // a list of all characters (as Strings); good for
    // iterating.
    for (final char in 'hello'.split('')) {
      debugPrint(char);
    }

    // Get all the UTF-16 code units in the string.
    var codeUnitList = 'Never odd or even'.codeUnits.toList();
    assert(codeUnitList[0] == 78);

    // Converting to uppercase or lowercase

    // Convert to uppercase.
    assert('web apps'.toUpperCase() == 'WEB APPS');

    // Convert to lowercase.
    assert('WEB APPS'.toLowerCase() == 'web apps');
  }
}
