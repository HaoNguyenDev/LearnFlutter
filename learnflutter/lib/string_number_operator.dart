import 'package:logger/logger.dart';

class StringNumberOperator {
  var logger = Logger();
  //MARK: Numbers
  /* You can convert a string into an integer or double with the parse() methods of int and double, respectively: */
  void numberParse() {
    logger.d('numberParse running...');
    assert(int.parse('42') == 42);
    assert(int.parse('0x42') == 66);
    assert(double.parse('0.50') == 0.5);
  }
}
