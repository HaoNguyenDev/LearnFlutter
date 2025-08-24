import 'package:learnflutter/learn_dart_language/class_and_properties_example.dart';
import 'package:learnflutter/learn_dart_language/operator_example.dart';
import 'package:learnflutter/learn_dart_language/exception_example.dart';
import 'package:learnflutter/learn_dart_language/function_example.dart';
import 'learn_dart_language/asynchrony_example.dart';
import 'learn_dart_language/string_number_operator.dart';
import 'package:learnflutter/learn_dart_language/json_handler_example.dart';
import 'dart:convert'; // for working with Json
import 'package:learnflutter/test_generate_model_json_parsing_code/developer.dart';
import 'package:learnflutter/learn_dart_language/enum_example.dart';
import 'package:learnflutter/learn_dart_language/callback_example.dart';
import 'package:learnflutter/learn_dart_language/restful_api_example.dart';
import 'package:flutter/material.dart';
import 'package:learnflutter/learn_dart_language/mixin_example.dart';

// MARK: MAIN
void main() async {
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

  // String jsonString =
  //     '''{"name": "Hao Nguyen", "age": 30, "isDeveloper": true}''';
  // Map<String, dynamic> userMap = jsonDecode(jsonString);
  // var developer = Developer.fromJson(userMap);
  // logger.d(developer.name);
  // logger.d(developer.age);
  // logger.d(developer.isDeveloper);

  // parseJsonToDemoParseJsonClass();

  //Enum
  /* 
  var testEnum = TestEnum();
  testEnum.testEnum();
  */

  //MARK: CallBack

  /*
  var callBackExample = CallBackExample();

  callBackExample.simpleCallback('Task 1', (result) {
    log.d('Result: ${result.nameOfTask}');
  });

  callBackExample.processNumber(2, 3, (a, b) => a + b);

  int multiplyFormular(int a, int b) => a * b;
  int sumFormular(int a, int b) => a + b;
  var result = callBackExample.processNumber(2, 3, sumFormular);
  log.d('Result: $result');

  callBackExample.callUrl('https://google.com', (result, error) {
    if (error != null) {
      log.d('Error: ${error.toString()}');
    } else {
      log.d('Result: ${result.nameOfTask}');
    }
  });

  var mockData = {
    'image': 'hash image code 273465',
  };
  callBackExample.uploadData(mockData, (result) {
    log.d('Result: ${result.nameOfTask}');
  }, (error) {
    log.d('Error: ${error.toString()}');
  });

  try {
    var result = await callBackExample.fetchDataWithFuture(true);
    log.d('Result: $result');
  } catch (error) {
    log.d('Error: ${error.toString()}');
  }
*/

  /*
  //MARK: RESTful API
  try {
    var postList = await fetchPostsDio();
    if (postList?.users != null) {
      var posts = postList?.users;
      // debugPrint('Posts: ${posts![0]}');
      debugPrint('Posts: ${posts!}');
    } else {
      debugPrint('Posts is null');
    }
  } catch (error) {
    debugPrint('Error: ${error.toString()}');
  }
  */

  var bird = Bird('Red bird');
  debugPrint(bird.birdName);
  bird.fly();

  var fish = Fish('Blue Fish');
  debugPrint(fish.fishName);
  fish.swim();

  var duck = Duck('Sky Duck');
  debugPrint(duck.duckName);
  duck.fly();
  duck.swim();

  debugPrint('\n');

  var dog = Dog('Corgi dog');
  debugPrint(dog.dogName);
  dog.eating();
  dog.bark();
  dog.run();
}
