import 'package:logger/logger.dart';
import 'package:learnflutter/class_and_properties_example.dart';
import 'package:learnflutter/operator_example.dart';
import 'package:learnflutter/exception_example.dart';
import 'package:learnflutter/function_example.dart';
import 'asynchrony_example.dart';
import 'string_number_operator.dart';
import 'json_handler_example.dart';
import 'dart:convert'; // for working with Json

var logger = Logger();

// MARK: MAIN
void main() {
  /*
  // Variable
  var firstNumbers = [0, 1, 2, 3, 4, 5];
  var secondNumber = [6, 7, 8, 9, 10];
  var cal = Calculator(10, 3, firstNumbers, secondNumber);

  print('add: ${cal.firstNumber} + ${cal.secondNumber} = ${cal.add()}\n');
  print(
    'subtract: ${cal.firstNumber} - ${cal.secondNumber} = ${cal.subtract()}\n',
  );
  print(
    'multiply: ${cal.firstNumber} * ${cal.secondNumber} = ${cal.multiply()}\n',
  );
  print('divide: ${cal.firstNumber} / ${cal.secondNumber} = ${cal.divide()}\n');
  print(
    'divideInterger: ${cal.firstNumber} ~/ ${cal.secondNumber} = ${cal.divideInterger()}\n',
  );
  print('mod: ${cal.firstNumber} % ${cal.secondNumber} = ${cal.mod()}\n');
  print(
    'modWithFirstNumber: ${cal.firstNumber}, %2 = ${cal.modWithFirstNumber() ? 'even number' : 'odd number'}\n',
  );
  print(
    'modWithSecondNumber: ${cal.secondNumber}, %2 = ${cal.modWithSecondNumber() ? 'even number' : 'odd number'}\n',
  );
  print('Combine list: ${cal.combineList()}');
  print(
    'Filter even number: ${cal.filterWith(true, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9])}',
  );
  print(
    'Filter odd number: ${cal.filterWith(false, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9])}\n',
  );

  // For loop
  cal.forUpper();
  cal.forList();
  cal.forEachList();

  // Map
  cal.showMeTypeOf('Hello');
  cal.showMeTypeOf(10.0);
  cal.showMeTypeOf(true);
  print('Constructor Map value: ${cal.createScores()}\n');
  print(cal.getValueOfMyDataMap('name'));
  cal.showKeyAndValueFromMyDataMap();
  print('\n');
  print('Old Map value: ${cal.myData}\n');
  print('Update Map value: ${cal.updateMyDataMap()}\n');
  print('Calculate Element InMap: ${cal.calculateElementInMap()}\n');
*/

  /*
  // Try Catch
  tryCatchVoid();
  callVoidHasThrowException();
  tryCatchWithStackTrace();
*/

  /*
  // Class and extends abstract class
  var car = Car('Vinfast', 'VF9', 2025, 'white', 'VietNam', true, 200);
  car.messageOfBrand();
  print(car.exportVerhicalInfo());

  print('\n');

  var bicycle = Bicycle(
    'Phuong Hoang',
    'MiniScooter',
    2022,
    'white',
    'VietNam',
    30,
  );
  bicycle.messageOfBrand();
  print(bicycle.exportVerhicalInfo());
*/

  /*
   //Exception
   var callException = CallFunctionException();
   callException.testExceptionResult();
 */

  /*
  var stackManager = Stack<String>();
  stackManager.push('stack 1');
  stackManager.push('stack 2');
  stackManager.push('stack 3');
  stackManager.push('stack 4');
  logger.d(stackManager.getStacks());
  logger.d('Stack list = ${stackManager.getStacks()}');
  logger.d('Pop: ${stackManager.pop()}');
  logger.d('Pop: ${stackManager.pop()}');
  logger.d('Stack list = ${stackManager.getStacks()}');

  logger.d('=================================');

  var queueManager = Queue<String>();
  queueManager.enqueue('queue 1');
  queueManager.enqueue('queue 2');
  queueManager.enqueue('queue 3');
  queueManager.enqueue('queue 4');
  logger.d('Queue list = ${queueManager.getQueues()}');
  logger.d('Dequeue: ${queueManager.dequeue()}');
  logger.d('Dequeue: ${queueManager.dequeue()}');
  logger.d('Queue list = ${queueManager.getQueues()}');

  logger.d('=================================');

  showTypeOf<String>('Hello Flutter!');

  testExampleClass();
  var exampleClass = ExampleClass(title: "Hello", value: 100);

  exampleClass.setProperties = "Hi";
  logger.d(exampleClass.getProperties);
  exampleClass.setProperties = "World";
  logger.d(exampleClass.getProperties);
  */

  /*
  var asyncExample = AsynchronyExample();
  asyncExample.fetchBtnTapped();
  */

  /*
  var stringNumberOperator = StringNumberOperator();
  stringNumberOperator.numberParse();
  */

  // Parse JSON string
  // String jsonString = '{"name": "Thế Anh", "age": 30, "isDeveloper": false}';
  // Map<String, dynamic> userMap = jsonDecode(jsonString);

  // var user = User.fromJson(userMap);
  // logger.d(user.name);
  // logger.d(user.age);
  // logger.d(user.isDeveloper);
}
