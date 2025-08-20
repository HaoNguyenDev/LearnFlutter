import 'class_and_properties_example.dart';
import 'operator_example.dart';

// MARK: MAIN
 
void main() { 
  // Variable
  var firstNumbers = [0, 1, 2, 3, 4, 5];
  var secondNumber = [6 , 7, 8, 9, 10];
  var cal = Calculator(10, 3, firstNumbers, secondNumber);

  print('add: ${cal.firstNumber} + ${cal.secondNumber} = ${cal.add()}\n');
  print('subtract: ${cal.firstNumber} - ${cal.secondNumber} = ${cal.subtract()}\n');
  print('multiply: ${cal.firstNumber} * ${cal.secondNumber} = ${cal.multiply()}\n');
  print('divide: ${cal.firstNumber} / ${cal.secondNumber} = ${cal.divide()}\n');
  print('divideInterger: ${cal.firstNumber} ~/ ${cal.secondNumber} = ${cal.divideInterger()}\n');
  print('mod: ${cal.firstNumber} % ${cal.secondNumber} = ${cal.mod()}\n');
  print('modWithFirstNumber: ${cal.firstNumber}, %2 = ${cal.modWithFirstNumber() ? 'even number' : 'odd number'}\n');
  print('modWithSecondNumber: ${cal.secondNumber}, %2 = ${cal.modWithSecondNumber() ? 'even number' : 'odd number'}\n');
  print('Combine list: ${cal.combineList()}');
  print('Filter even number: ${cal.filterWith(true, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9])}');
  print('Filter odd number: ${cal.filterWith(false, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9])}\n');

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

  // Try Catch
  tryCatchVoid();
  callVoidHasThrowException();
  tryCatchWithStackTrace();

  var car = Car('Vinfast', 'VF9', 2025, 'white', 'VietNam', true, 200);
  car.messageOfBrand();
  print(car.exportVerhicalInfo());

  print('\n');

  var bicycle = Bicycle('Phuong Hoang', 'MiniScooter', 2022, 'white', 'VietNam', 30);
  bicycle.messageOfBrand();
  print(bicycle.exportVerhicalInfo());
}

//====================
// MARK: EXCEPTION
//====================

/// Implement exceptions

class InvalidEmailException implements Exception {
  final String message;
  InvalidEmailException(this.message);
}

class InvalidPasswordException implements Exception {
  final String message;
  InvalidPasswordException(this.message);
}

class UserNotFoundException implements Exception {
  final String message;
  UserNotFoundException(this.message);
}

class UserInfo {
  String email;
  String name;
  String token;
  UserInfo(this.email,this.name, this.token);
}

final Map<String, String> mockLoginInfo = {
'user1@gmail.com' : 'password1',
'user2@gmail.com' : 'password2',
'user3@gmail.com' : 'password3',
};

Future<UserInfo> callLoginApi(String email, String password) async {
  print('callLoginApi...');
  await Future.delayed(Duration(seconds: 2));
  if (!email.contains('@')) {
    throw InvalidEmailException('Invalid email');
  } 

  if (!mockLoginInfo.keys.contains(email)) {
    throw UserNotFoundException('User not found');
  }

  if (mockLoginInfo[email] != password) {
    throw InvalidPasswordException('Invalid password');
  }
  return UserInfo(email, 'Hao Nguyen', 'token7346523478');
}

Future<void> userDoLogin(String email, String password) async {
  try {
    var userInfo = await callLoginApi(email, password);
    print('Login success! Hi ${userInfo.name} email: ${userInfo.email}');
  } on InvalidEmailException catch (error) {
    print('InvalidEmailException: $error');
  } on InvalidPasswordException catch (error) {
    print('InvalidPasswordException: $error');
  } on UserNotFoundException catch (error) {
    print('UserNotFoundException: $error');
  } finally {
    print('userDoLogin finally');
  }
}

//MARK: MAIN
// void main() async {
//   await userDoLogin('user1@gmail.com', 'password1');
// }

//=======================================
// MARK: Cascade Notion
//=======================================

class Customer {
  String name = '';
  String city = '';
  void printInfo() {
    print('$name từ $city');
  }
}

class CascadeNationExample {
  
  void exampleCode() {
    var numbers = <int>[];
    numbers.add(1);
    numbers.add(2);
    numbers.add(3);
    // Use cascade notation
    numbers..add(4)..add(5)..add(6);

    // Use cascade notation
    // var newCustomer = Customer()
    //   ..name = 'Bob'
    //   ..city = 'London'
    //   ..printInfo();
  }
}

//MARK: MAIN
/*
void main() {
  var example = CascadeNationExample();
  example.exampleCode();
}
*/

//===============
// MARK: GENERIC
//===============

class Stack<T> {
  List<T> stacks;

  Stack(this.stacks);

  void push(T stack) {
    stacks.add(stack);
  } 

  T? pop() {
    return stacks.isNotEmpty ? stacks.removeLast() : null;
  }

  List<T> getStacks() => stacks;
}

class Queue<T> {
  List<T> queues;
  Queue(this.queues);

  void enqueue(T queue) {
    queues.add(queue);
  }

  T? dequeue() {
    return queues.isNotEmpty ? queues.removeAt(0) : null;
  }

  List<T> getQueues() => queues;
}

T showGenericType<T>(T value) {
  print('showGenericType - The type of $value is ${value.runtimeType}');
  return value;
}

/*
void main() {
  var st = Stack<String>([]);
  print('Stack list = ${st.getStacks()}');
  st.push('stack 1');
  st.push('stack 2');
  st.push('stack 3');
  st.push('stack 4');
  print('Stack list = ${st.getStacks()}');
  print('Pop: ${st.pop()}');
  print('Pop: ${st.pop()}');
  print('Stack list = ${st.getStacks()}');

  print('=================================');

  var queue = Queue<String>([]);
  print('Queue list = ${queue.getQueues()}');
  queue.enqueue('queue 1');
  queue.enqueue('queue 2');
  queue.enqueue('queue 3');
  queue.enqueue('queue 4');
  print('Queue list = ${queue.getQueues()}');
  print('Dequeue: ${queue.dequeue()}');
  print('Dequeue: ${queue.dequeue()}');
  print('Queue list = ${queue.getQueues()}');

  showGenericType(3.14);
  showGenericType("Hello Flutter!");
  showGenericType(true);
}
*/

