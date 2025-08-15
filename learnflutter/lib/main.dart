import 'package:flutter/foundation.dart';

void main() {

  // Variable and type
  final lastName = 'Hao';      // final: A variable that can only be assigned a value once.
  final int final1;
  final1 = 10;
  const pi = 3.14;             // const: A constant whose value must be known at compile time. Often used for values that never change.

  String firstName = 'Nguyen';
  int aNumber = 11;
  double aDouble = 11.1;
  bool aBool = false;

  var myName = 'Hao Nguyen';
  var myAge = 30;
  var isYoung = false;
  const piNumber = 3.14;
 
  String? nullableVariable;

  List<int> listNumber = [1, 2, 3];
  var listNames = ["Nam", "Minh", "Hoang"];

  debugPrint('👉 👉 👉 Value: $listNames');
  
  saySomething();

  var sumVoidResult = sumVoid(1, 2);
  debugPrint('sumVoidResult $sumVoidResult');
}

  // Functions
  // Void with non return value
  void saySomething() {
    debugPrint('saySomething void: Hello Flutter!');
  }
  // Void with return value
  int sumVoid(int firstNumber, int secondsNumber) {
    return firstNumber + secondsNumber;
  }
  // Void with short syntax
  int multiply(int a, int b) => a * b;