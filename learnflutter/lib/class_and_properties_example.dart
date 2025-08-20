abstract class Verhical {
  late String brandName;
  late String modelName;
  int? year;
  String? color;

  var belongTo = 'Verhical';
  final int iso = 9001;
  static const pi = 3.14;

  //MARK: Constructor
  /// Generative constructor
  // Verhical(this.brandName, this.modelName, this.year, this.color);
  // Verhical.constrcutorNamed(this.brandName, this.modelName, this.year, this.color);

  Verhical(
    String brandNameValue,
    String modelNameValue,
    int? yearValue,
    String? colorValue,
  ) {
    this.brandName = brandNameValue;
    this.modelName = modelNameValue;
    this.year = yearValue;
    this.color = colorValue;
  }

  /// Named constructor
  Verhical.constructorNamed(
    String brandNameValue,
    String modelNameValue,
    int? yearValue,
    String? colorValue,
  ) {
    this.brandName = brandNameValue;
    this.modelName = modelNameValue;
    this.year = yearValue;
    this.color = colorValue;
  }

  /// Abstract function have no function body like below
  String exportVerhicalInfo();
  void messageOfBrand();
}

class Car extends Verhical {
  static const numberOfWheel = 4;
  final String? _madeIn;
  final bool _isElectricVerhical;
  var maxSpeed = 0;

  //MARK: Constructor
  Car(
    super.brandName,
    super.modelName,
    super.year,
    super.color,
    this._madeIn,
    this._isElectricVerhical,
    this.maxSpeed,
  );

  // @override
  // void messageOfBrand() {
  //   print('This one is Car from $brandName in $_madeIn, we just has $numberOfWheel wheels!');
  // }

  @override
  String exportVerhicalInfo() {
    return 'This is $modelName of $brandName, and we make ${_isElectricVerhical ? 'electric' : 'gasoline'} verhical from $_madeIn, max speed is $maxSpeed km/h!';
  }

  @override
  void messageOfBrand() {
    print(
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
    print(
      'We are $brandName Bicycle, we just has $numberOfWheel wheels!, max speed is $maxSpeed km/h! Made in $_madeIn',
    );
  }
}
