// void main() {

//   // Variable and type
//   final lastName = 'Hao';      // final: A variable that can only be assigned a value once.
//   final int final1;
//   final1 = 10;
//   const pi = 3.14;             // const: A constant whose value must be known at compile time. Often used for values that never change.

//   String firstName = 'Nguyen';
//   int aNumber = 11;
//   double aDouble = 11.1;
//   bool aBool = false;

//   var myName = 'Hao Nguyen';
//   var myAge = 30;
//   var isYoung = false;
//   const piNumber = 3.14;
 
//   String? nullableVariable;

//   List<int> listNumber = [1, 2, 3];
//   var listNames = ["Nam", "Minh", "Hoang"];

//   debugPrint('👉 👉 👉 Value: $listNames');
  
//   saySomething(); // Function

//   var sumVoidResult = sumVoid(1, 2); // Function
//   debugPrint('sumVoidResult $sumVoidResult');
// }

//   // Functions
//   // Void with non return value
//   void saySomething() {
//     debugPrint('saySomething void: Hello Flutter!');
//   }
//   // Void with return value
//   int sumVoid(int firstNumber, int secondsNumber) {
//     return firstNumber + secondsNumber;
//   }
//   // Void with short syntax
//   int multiply(int a, int b) => a * b;

  class Car {
    String? brandName;
    String? modelName;
    int? year;

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
      this.brandName = 'Tesla';
      this.modelName = 'Model Y';
      this.year = 2025;
    }

    void displayCarInfo() {
      print('Car info: $brandName, $modelName , $year');
    }
  }

  void main() {
    // var myCar = Car("Vinfast", "VF9", 2025);
    // var myCar = Car.customConstructor('Mercedes', 'MayBach', 2025);
    var myCar = Car.teslaCar();
    myCar.displayCarInfo();
  }