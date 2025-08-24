import 'package:flutter/material.dart';
//===========================
// MARK: ExampleClass
//===========================
class ExampleClass {
  late String title;
  late Object value;
  String? optionalInput; 
  ExampleClass.namedConstructor(this.title, this.value, [this.optionalInput]); // define optional parameter in []

  // Redirecting constructor
  ExampleClass.fromTitle(String title) : this.namedConstructor(title, 0);

  ExampleClass({required this.title, required this.value});

  // Named constructor for origin
  ExampleClass.origin() {
    title = 'Origin';
    value = 0;
  }

  ExampleClass.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    value = json['value'];
  }

  //MARK: GET SET
  String? _properties;
  String? get getProperties => _properties;
  set setProperties(String? value) {
    _properties = value;
  }

  //MARK: Record syntax
  (String, int) record1 = ('Hao', 1995);
  var record2 = ('Result', Exception());

  void updateRecord(String str, Exception exception) {
    record2 = (str, exception);
  }
}

void testExampleClass() {
  var exampleClass = ExampleClass(title: 'Hao Nguyen', value: 30);
  debugPrint(
    'Title: ${exampleClass.title}, Value: ${exampleClass.value}, value type: ${exampleClass.value.runtimeType}',
  );
}

//===========================
// MARK: Factory Constructor
//===========================
/*
Factory constructors are used when the constructor itself doesn't always create a new instance of its class.
They can return an existing instance, an instance of a subclass, or perform complex initialization logic.
They are declared using the factory keyword.
*/
/*
class Logger {
  final String name;
  static final Map<String, Logger> _cache = {};

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name]!;
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name); // Private named constructor for internal use
}
  debugPrint('Debug message'); // For debugging purposes
  logger.i('Info message'); // General information
  logger.w('Warning message'); // Potential issues
  logger.e('Error message'); // Errors that occurred
  logger.f('f messgae');
  logger.t('t logger');
  
*/
//===========================
// MARK: Constant Constructor
//===========================
/*
Constant constructors create compile-time constant objects,
 meaning their properties cannot be changed after initialization. 
 They are declared using the const keyword, and all instance variables must be final
 */
class ImmutablePoint {
  final double x, y;

  const ImmutablePoint(this.x, this.y);
}

//===========================
// MARK: Abstract Class
//===========================
abstract class Verhical {
  late String brandName;
  late String modelName;
  int? year;
  String? color;

  var belongTo = 'Verhical';
  final int iso = 9001;
  static const pi = 3.14;

  //MARK: Constructor example
  /// Generative constructor
  // Verhical(this.brandName, this.modelName, this.year, this.color);
  // Verhical.constrcutorNamed(this.brandName, this.modelName, this.year, this.color);

  Verhical(
    String brandNameValue,
    String modelNameValue,
    int? yearValue,
    String? colorValue,
  ) {
    brandName = brandNameValue;
    modelName = modelNameValue;
    year = yearValue;
    color = colorValue;
  }

  /// Named constructor
  Verhical.constructorNamed(
    String brandNameValue,
    String modelNameValue,
    int? yearValue,
    String? colorValue,
  ) {
    brandName = brandNameValue;
    modelName = modelNameValue;
    year = yearValue;
    color = colorValue;
  }

  /// Abstract function have no function body like below
  String exportVerhicalInfo();
  void messageOfBrand();
}

//===========================
// MARK: Inheritance
//===========================
class Car extends Verhical {
  static const numberOfWheel = 4;
  final String? _madeIn;
  final bool _isElectricVerhical;
  var maxSpeed = 0;

  Car(
    super.brandName,
    super.modelName,
    super.year,
    super.color,
    this._madeIn,
    this._isElectricVerhical,
    this.maxSpeed,
  );

  @override
  String exportVerhicalInfo() {
    return 'This is $modelName of $brandName, and we make ${_isElectricVerhical ? 'electric' : 'gasoline'} verhical from $_madeIn, max speed is $maxSpeed km/h!';
  }

  @override
  void messageOfBrand() {
    debugPrint(
      'VinFast\'s core message revolves around creating a sustainable future through smart, safe, and environmentally friendly electric vehicles',
    );
  }

  String? getCountryMadeIn() {
    return _madeIn;
  }

  bool getTypeOfCar() {
    return _isElectricVerhical;
  }
}

class Bicycle extends Verhical {
  static const numberOfWheel = 2;
  final String? _madeIn;
  int maxSpeed;
  Bicycle(
    super.brandName,
    super.modelName,
    super.year,
    super.color,
    this._madeIn,
    this.maxSpeed,
  );

  @override
  String exportVerhicalInfo() {
    return '$brandName $modelName $year $color $_madeIn $maxSpeed';
  }

  @override
  void messageOfBrand() {
    debugPrint(
      'We are $brandName Bicycle, we just has $numberOfWheel wheels!, max speed is $maxSpeed km/h! Made in $_madeIn',
    );
  }
}
/*
class TypeClass {
  void testType() {
    /// Integers are numbers without a decimal point. Here are some examples of defining integer literals:
    var interger = 1;
    var hex = 0xDEADBEEF;

    /// If a number includes a decimal, it is a double. Here are some examples of defining double literals:
    var y = 1.1;
    var exponents = 1.42e5;

    /// You can also declare a variable as a num. If you do this, the variable can have both integer and double values.
    num x = 1; // x can have both int and double values
    x += 2.5;

    /// Integer literals are automatically converted to doubles when necessary:
    double z = 1; // Equivalent to double z = 1.0.

    /// Here's how you turn a string into a number, or vice versa:
    // String -> int
    var one = int.parse('1');
    assert(one == 1);

    // String -> double
    var onePointOne = double.parse('1.1');
    assert(onePointOne == 1.1);

    // int -> String
    String oneAsString = 1.toString();
    assert(oneAsString == '1');

    // double -> String
    String piAsString = 3.14159.toStringAsFixed(2);
    assert(piAsString == '3.14');

    /// The int type specifies the traditional bitwise shift (<<, >>, >>>),
    ///  complement (~), AND (&), OR (|), and XOR (^) operators, which are useful for manipulating and masking flags in bit fields.
    ///  For example:
    assert((3 << 1) == 6); // 0011 << 1 == 0110
    assert((3 | 4) == 7); // 0011 | 0100 == 0111
    assert((3 & 4) == 0); // 0011 & 0100 == 0000

    /// Number literals are compile-time constants.
    /// Many arithmetic expressions are also compile-time constants, as long as their operands are compile-time constants that evaluate to numbers.
    const msPerSecond = 1000;
    const secondsUntilRetry = 5;
    const msUntilRetry = secondsUntilRetry * msPerSecond;

    // MARK: STRING
    // A Dart string (String object) holds a sequence of UTF-16 code units. You can use either single or double quotes to create a string:
    var s1 = 'Single quotes work well for string literals.';
    var s2 = "Double quotes work just as well.";
    var s3 = 'It\'s easy to escape the string delimiter.';
    var s4 = "It's even easier to use the other delimiter.";
  }
  
}
*/



//===========================
// MARK: Abstract Class
//===========================

/*
abstract class Animal {
  // Properties
  String _name;
  int _age;

  // Constructor
  Animal(this._name, this._age);

  // Getter
  String get name => _name;

  // Setter
  set age(int newAge) {
    if (newAge >= 0) {
      _age = newAge;
    } else {
      throw ArgumentError('Age cannot be negative');
    }
  }

  int get age => _age;

  // Abstract method without body
  void makeSound();

  // Method with body
  void eat() {
    print('$_name is eating');
  }
}

// child class implement abstract class
class Dog extends Animal {
  Dog(String name, int age) : super(name, age);

  @override
  void makeSound() {
    print('$name barks: Woof!');
  }
}
*/