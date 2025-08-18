
  class Car {
    String? brandName;
    String? modelName;
    int? year;

   // Variable and type
    final lastName = 'Hao';      // final: A variable that can only be assigned a value once.
    final int finalVariable = 10;
    static const double piNetwork = 3.14;
    late int numberOfCar;        // late: A variable can be initialized later, instead of immediately.
    String firstName = 'Nguyen';
    int aNumber = 11;
    double aDouble = 11.1;
    bool aBool = false;

    var myName = 'Hao Nguyen';
    var myAge = 30;
    var isYoung = false;
    final piNumber = 3.14;
 
    String? nullableVariable;

    List<int> listNumber = [1, 2, 3];
    var listNames = ["Nam", "Minh", "Hoang"];

    // Car(this.brandName, this.modelName, this.year)

    Car(String? brandName, String? modelName, int? year) {
      this.brandName = brandName;
      this.modelName = modelName;
      this.year = year;
    }

    Car.customConstructor(String? brandName, String? modelName, int? year) {
      this.brandName = brandName;
      this.modelName = modelName;
      this.year = year;
    }

    Car.teslaCar() {
      brandName = 'Tesla';
      modelName = 'Model Y';
      year = 2025;
    }

    void setNumberOfCar(int number) {
      numberOfCar = number;
    }

    String displayCarInfo() => 'Car info: $brandName, $modelName , $year';

    int? getYear() {
      return year;
    }
    String? getModelName() => modelName;
    String getBrandName() => brandName ?? "Unvaliable";
  }

  // void main() {
  //   // var myCar = Car("Vinfast", "VF9", 2025);
  //   // var myCar = Car.customConstructor('Mercedes', 'MayBach', 2025);
  //   var myCar = Car.teslaCar();
  //   myCar.displayCarInfo();
  //   print(myCar.getBrandName());

  //   var newCar = createCar("Ford", "Everest", 2019);
  //   if (newCar != null) {
  //    newCar.displayCarInfo();
  //    print(newCar.getYear());
  //   }
  // }

  // Car? createCar(String? brandName, String? modelName, int? year) {
  //   return Car(brandName, modelName, year);
  // }


  //////////////////////////////// Inheritance ///////////////////////////////////////
  
  class Verhical {
      String? name;
      String? color;
      int? numberOfWheels;
      int? year;

      Verhical(this.name, this.color, this.numberOfWheels, this.year);

      void maxSpeed() {
        print('Your verhical speed!');
      }
  }

  class Bicycle extends Verhical {
    String? characteristic;
    int? speeds;

    Bicycle(String super.name, String super.color, int super.numberOfWheels, int super.year, this.characteristic, this.speeds);
     // :super() Call constructor of super class

    @override
    void maxSpeed() {
      print('Your $name with $color color has max speed is $speeds km/h only!');
    }
  }


  // void main() {
  //   var bicycle = Bicycle('Martin', 'white', 2, 2022, 'too slow', 30);
  //   print('Your verhical has name: ${bicycle.name}, and color: ${bicycle.color}, number of wheels: ${bicycle.numberOfWheels}');
  //   bicycle.maxSpeed();
  //   print('Characteristic: ${bicycle.characteristic}');
  // }

//////////////////////////////// Abstract class ///////////////////////////////////////
 abstract class Shape {
  double calculateArea();
  void draw() {
    print('Draw your shape right here');
  }
 }

 class Rectangle extends Shape {
  double width, height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() => width * height;
 }

//  void main() {
//   var rectangle = Rectangle(10.0, 10.0);
//   print('Area of the ractangle are: ${rectangle.calculateArea()}');
//   rectangle.draw();
//  }

//////////////////////////////// Home Work ///////////////////////////////////////

class Calculator {
  static const double pi = 3.14;  // const the same with let in Swfit
  final className = 'Calculator'; // can set value one time only
  late String? lateVariable;      // late mean can set value after init
  dynamic dynamicVariable;        // Undefine type until runtime, not compile-time. We can use dynamic type when work with Json if can't define field type.

  Object myObject = 'Hello';      // Define type when compile-time. Used Object when you need a variable that can hold any object, the same with Any and AnyObject in Swift.
  // When you want to store objects of different types in the same List or Map:
  List<Object> items = [1, 'hello', 3.14, true];
  Map<String, Object> myData = {
    'name': 'Dart',
    'age': 5,
    'is_cool': true
  };

  double? firstNumber;
  var secondNumber = 0.0;
  String? nullableVariable;

  List<int> firstNumbers;
  List<int> secondNumbers;

  Calculator(this.firstNumber, this.secondNumber, this.firstNumbers, this.secondNumbers);

  double add() => firstNumber! + secondNumber;
  double subtract() => firstNumber! - secondNumber;
  double multiply() => firstNumber! * secondNumber;
  double divide() => firstNumber! / secondNumber;
  int divideInterger() => firstNumber! ~/ secondNumber;
  double mod() => firstNumber! % secondNumber;
  bool modWithFirstNumber() => firstNumber! % 2 == 0;
  bool modWithSecondNumber() => secondNumber % 2 == 0;
  List<int> combineList() => [...firstNumbers, ...secondNumbers];

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
    numberLetters.forEach((letter) {
      print(letter);
    });

    print('\n');
  }

  // Use Object type when you want to write a function that can accept any data type as an argument:

  void showMeTypeOf(Object param) {
    print('The type of $param is ${param.runtimeType}');
  }
}

void main() { 
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

  cal.forUpper();
  cal.forList();
  cal.forEachList();

  cal.showMeTypeOf('Hello');
  cal.showMeTypeOf(10.0);
  cal.showMeTypeOf(true);
}
