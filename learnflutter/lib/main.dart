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

//   var myCar = Car("Mercedes", "MayBach", 2025);
//   myCar.displayInfo();
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

  // Class
  class Car {
    // Properties
    String? brand;
    String? model;
    int? year;

    // Short Constructor
    Car.vinfast() {
      brand = "Vinfast";
      model = "VF9";
      year = 2025;
    }

    // Car(this.brand, this.model, this.year);
    
    // Normal constrcutor
    Car(String brandName, String model, int year) {
      this.brand = brandName;
      this.model = model;
      this.year = year;
    }

    // Custom name of constructor
    Car.customNameOfConstructor(String newBrand, String newModel) {
      this.brand = newBrand;
      this.model = newModel;
      this.year = 2026;
    }

    // Method
    void displayInfo() {
      print('Car info: Brand name: $brand, model: $model, year: $year');
    }
  }

  void main() {
      // var myCar = Car("Mercedes", "MayBach", 2025);
      // var myCar = Car.customNameOfConstructor("Testla", "Model-X");
      var myCar = Car.vinfast();
      myCar.displayInfo();
  }