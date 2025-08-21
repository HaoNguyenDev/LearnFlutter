import 'package:logger/logger.dart';

var logger = Logger();

//===========================
// MARK: ExampleClass
//===========================
class ExampleClass {
  late String title;
  late Object value;

  ExampleClass.namedConstructor(this.title, this.value);

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
  logger.d(
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
  logger.d('Debug message'); // For debugging purposes
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
    logger.d(
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
    logger.d(
      'We are $brandName Bicycle, we just has $numberOfWheel wheels!, max speed is $maxSpeed km/h! Made in $_madeIn',
    );
  }
}
