
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
  double? firstNumber;
  double? secondNumber;

  List<int> firstNumbers;
  List<int> secondNumbers;

  Calculator(this.firstNumber, this.secondNumber, this.firstNumbers, this.secondNumbers);

  double add() => firstNumber! + secondNumber!;
  double subtract() => firstNumber! - secondNumber!;
  double multiply() => firstNumber! * secondNumber!;
  double divide() => firstNumber! / secondNumber!;
  int divideInterger() => firstNumber! ~/ secondNumber!;
  double mod() => firstNumber! % secondNumber!;
  bool modWithFirstNumber() => firstNumber! % 2 == 0;
  bool modWithSecondNumber() => secondNumber! % 2 == 0;
  List<int> combineList() => [...firstNumbers, ...secondNumbers];

  // void filterWith(bool evenNumber) {
  //   numbers.firstWhere()
  // }

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
}
