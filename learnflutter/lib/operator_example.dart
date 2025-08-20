class Calculator {
  static const double pi = 3.14;

  /// const the same with let in Swift
  final className = 'Calculator';

  /// can set value one time only
  late String? lateVariable;

  /// late mean can set value after init
  dynamic dynamicVariable;

  /// Undefine type until runtime, not compile-time. We can use dynamic type when work with Json if can't define field type.
  Object myObject = 'Hello';

  /// Define type when compile-time. Used Object when you need a variable that can hold any object, need to cast first and use. The same type with Any and AnyObject in Swift.
  List<Object> items = [
    1,
    'hello',
    3.14,
    true,
  ]; // When you want to store objects of different types in the same List or Map:

  double? firstNumber;
  var secondNumber = 0.0;
  String? nullableVariable;

  List<int> firstNumbers;
  List<int> secondNumbers;

  /// Map literal. Map is the same with dictionary in Swift
  var anMapNumber = {'one': 1, 'two': 2, 'three': 3};

  Map<String, Object> myData = {
    'name': 'Hao Nguyen',
    'age': 30,
    'isDeveloper': true,
  };

  Calculator(
    this.firstNumber,
    this.secondNumber,
    this.firstNumbers,
    this.secondNumbers,
  );

  /* 
  Toán tử	Ý nghĩa	Ví dụ	Tương đương với
  +=	Phép gán cộng	x += y	x = x + y
  -=	Phép gán trừ	x -= y	x = x - y
  *=	Phép gán nhân	x *= y	x = x * y
  /=	Phép gán chia	x /= y	x = x / y
  ~/=	Phép gán chia lấy nguyên	x ~/= y	x = x ~/ y
  %=	Phép gán chia lấy dư	x %= y	x = x % y
  <<=	Phép gán dịch trái	x <<= y	x = x << y
  >>=	Phép gán dịch phải	x >>= y	x = x >> y
  &=	Phép gán AND	x &= y	x = x & y
  ^=	Phép gán XOR	x ^= y	x = x ^ y
  |=	Phép gán OR	  x |= y	x = x | y 
  */

  double add() => firstNumber! + secondNumber;
  double subtract() => firstNumber! - secondNumber;
  double multiply() => firstNumber! * secondNumber;
  double divide() => firstNumber! / secondNumber;
  int divideInterger() => firstNumber! ~/ secondNumber;
  double mod() => firstNumber! % secondNumber;
  bool modWithFirstNumber() => firstNumber! % 2 == 0;
  bool modWithSecondNumber() => secondNumber % 2 == 0;
  List<int> combineList() => [...firstNumbers, ...secondNumbers];

  //====================
  // MARK: FOR LOOP
  //====================
  List<int>? filterWith(bool filterEvenNumber, List<int> yourNumbers) {
    var eventNumberTmp = <int>[];
    var oddNumberTmp = <int>[];
    for (var number in yourNumbers) {
      if (number % 2 == 0) {
        eventNumberTmp.add(number);
      } else {
        oddNumberTmp.add(number);
      }
    }
    return filterEvenNumber ? eventNumberTmp : oddNumberTmp;
  }

  void forUpper() {
    for (var i = 0; i <= 10; i++) {
      print(i);
    }
    print('\n');
  }

  void forList() {
    List<String> letters = ['a', 'b', 'c', 'd', 'e'];
    for (var letter in letters) {
      print(letter);
    }

    print('\n');

    List<String> names = ['An', 'Binh', 'Cuong', 'Dung', 'Yen'];
    for (var index = 0; index < names.length; index++) {
      print('Name at index number $index is ${names[index]}');
    }
    print('\n');
  }

  void forEachList() {
    List<String> numberLetters = ['Mot', 'Hai', 'Ba', 'Bon', 'Nam'];
    for (var letter in numberLetters) {
      print(letter);
    }

    print('\n');
  }

  /// Use Object type when you want to write a function that can accept any data type as an argument:
  void showMeTypeOf(Object param) {
    print('The type of $param is ${param.runtimeType}');
  }

  //====================
  // MARK: MAP OPERATOR
  //====================
  Map<String, int> createScores() {
    var scores = <String, int>{};
    scores['Football'] = 8; // Add element to map
    scores['Basketball'] = 9;
    scores['Baseball'] = 10;
    return scores;
  }

  String getValueOfMyDataMap(String key) {
    return 'Value of key $key is ${myData[key]}, type is ${myData[key].runtimeType}\n';
  }

  void showKeyAndValueFromMyDataMap() {
    myData.forEach((key, value) {
      print('Key: $key, Value: $value');
    });
  }

  Map<String, Object> updateMyDataMap() {
    myData['city'] =
        'Hochiminh City'; // If the key does not exist, it will be added
    myData['age'] = 29; // If it exists, the value will be updated.
    myData.remove('isDeveloper'); // Remove element with key
    // myData.clear();                     // Remove all elements
    // myData.length;                      // Get number of elements
    // myData.keys;                        // Get all keys
    // myData.values;                      // Get all values
    // myData.isNotEmpty;                  // Check if the map is not empty
    // myData.isEmpty;                     // Check if the map is empty
    // myData.containsKey('name');         // Check if the map contains a key
    // myData.containsValue('Hao Nguyen'); // Check if the map contains a value
    return myData;
  }

  Map<String, int> calculateElementInMap() {
    var numbers = [
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "3",
      "4",
      "8",
      "9",
      "1",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
    ];
    print('$numbers \n');
    var map = <String, int>{};
    for (var number in numbers) {
      map[number] = (map[number] ?? 0) + 1;
    }
    return map;
  }
}

//====================
// MARK: TRY CATCH
//====================
/* 
try: Put risky code here.
catch: Catch and handle errors to prevent the program from crashing.
on: Catch a specific type of error for specialized handling.
finally: Run cleanup code, always executed.
throw: Proactively generate an error according to your logic.
 */
void tryCatchVoid() {
  try {
    var result = 10 ~/ 0;
    print('tryCatch result: $result');
  } on FormatException catch (error) {
    print('Error: $error');
  } catch (error) {
    print('tryCatch has other error: $error');
  } finally {
    print(
      'tryCatch finally',
    ); // Whether there is an error or not, this block still runs
  }
  print('continue other part of the function');
}

void voidHasThrowException(String password) {
  if (password != "123") {
    throw Exception('Password incorrect!'); // throw exception
  } else {
    print('Password correct!');
  }
}

void callVoidHasThrowException() {
  try {
    voidHasThrowException('1234');
  } catch (error) {
    print('callVoidHasThrowException Error: $error');
  }
}

void tryCatchWithStackTrace() {
  try {
    var result = int.parse('not a number');
    print('tryCatchWithStackTrace result: $result');
  } catch (error, stackTrace) {
    // Add second parameter to capture StackTrace
    print('Error: $error');
    print('Stack Trace: $stackTrace');
  }
  print('continue fuction');
}
