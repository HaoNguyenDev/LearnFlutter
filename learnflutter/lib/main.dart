
  class Car {
    String? brandName;
    String? modelName;
    int? year;

   // Variable and type
    final lastName = 'Hao';      // final: A variable that can only be assigned a value once.
    final int finalVariable = 10;
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

    void displayCarInfo() {
      print('Car info: $brandName, $modelName , $year');
    }

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

    Bicycle(String name, String color, int numberOfWheels, int year, this.characteristic, this.speeds): super(name, color, numberOfWheels, year);
     // :super() Call constructor of super class

    @override
    void maxSpeed() {
      print('Your $name with $color color has max speed is $speeds km/h');
    }
  }


  void main() {
    var bicycle = Bicycle('Martin', 'white', 2, 2022, 'too slow', 30);
    // print('Your verhical has name: $bicycle.name, and color: $bicycle.color, $bicycle.numberOfWheels');
    bicycle.maxSpeed();
    print('characteristic: $bicycle.characteristic');
  }