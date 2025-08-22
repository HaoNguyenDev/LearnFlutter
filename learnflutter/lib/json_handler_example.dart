class User {
  final String? name;
  final int? age;
  bool? isDeveloper;

  User({required this.name, required this.age, required this.isDeveloper});

  /* factory User.fromJson(...): This is a special factory constructor, used to create a new object from JSON data.
 It takes a Map<String, dynamic> (representing JSON) and returns a User object. */
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'] as String?,
      age: json['age'] as int?,
      isDeveloper: json['isDeveloper'] as bool?,
    );
  }
}

/*
  void main() {
    // Parse JSON string
  String jsonString = '{"name": "Thế Anh", "age": 30, "isDeveloper": false}';
  Map<String, dynamic> userMap = jsonDecode(jsonString);

  var user = User.fromJson(userMap);
  logger.d(user.name);
  logger.d(user.age);
  logger.d(user.isDeveloper);
  }
 */

class Store {
  String? name;
  StoreLocation? location;
  bool? isOpen;
  List<Category?>? categories;
  List<Employe?>? employees;
  String? lastUpdated;

  Store({
    required this.name,
    required this.location,
    required this.isOpen,
    required this.categories,
    required this.employees,
    required this.lastUpdated,
  });

  factory Store.fromJson(Map<String, dynamic> json) {
    return Store(
      name: json['name'] as String?,
      location: StoreLocation.fromJson(
        json['location'] as Map<String, dynamic>,
      ),
      isOpen: json['isOpen'] as bool?,
      categories: (json['categories'] as List)
          .map((category) => Category.fromJson(category))
          .toList(),
      employees: (json['employees'] as List)
          .map((employee) => Employe.fromJson(employee))
          .toList(),
      lastUpdated: json['lastUpdated'] as String?,
    );
  }
}

class StoreLocation {
  String? address;
  String? city;
  String? country;
  Coordinates? coordinates;

  StoreLocation({
    required this.address,
    required this.city,
    required this.country,
    required this.coordinates,
  });

  factory StoreLocation.fromJson(Map<String, dynamic> json) {
    return StoreLocation(
      address: json['address'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      coordinates: Coordinates.fromJson(
        json['coordinates'] as Map<String, dynamic>,
      ),
    );
  }
}

class Coordinates {
  double? latitude;
  double? longitude;

  Coordinates({required this.latitude, required this.longitude});

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return Coordinates(
      latitude: json['latitude'] as double?,
      longitude: json['longitude'] as double?,
    );
  }
}

class Category {
  int? id;
  String? name;
  List<Product?>? products;

  Category({required this.id, required this.name, required this.products});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] as int?,
      name: json['name'] as String?,
      products: (json['products'] as List)
          .map((product) => Product.fromJson(product))
          .toList(),
    );
  }
}

class Product {
  String? id;
  String? name;
  double? price;
  bool? inStock;
  Attributes? attributes;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.inStock,
    required this.attributes,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as String?,
      name: json['name'] as String?,
      price: json['price'] as double?,
      inStock: json['inStock'] as bool?,
      attributes: Attributes.fromJson(
        json['attributes'] as Map<String, dynamic>,
      ),
    );
  }
}

class Attributes {
  String? brand;
  String? color;
  String? storage;
  String? size;
  String? material;

  Attributes({
    required this.brand,
    required this.color,
    required this.storage,
    required this.size,
    required this.material,
  });

  factory Attributes.fromJson(Map<String, dynamic> json) {
    return Attributes(
      brand: json['brand'] as String?,
      color: json['color'] as String?,
      storage: json['storage'] as String?,
      size: json['size'] as String?,
      material: json['material'] as String?,
    );
  }
}

class Employe {
  String? id;
  String? name;
  String? role;

  Employe({required this.id, required this.name, required this.role});

  factory Employe.fromJson(Map<String, dynamic> json) {
    return Employe(
      id: json['id'] as String?,
      name: json['name'] as String?,
      role: json['role'] as String?,
    );
  }
}

class Contact {
  String? email;
  String? phone;

  Contact({required this.email, required this.phone});

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );
  }
}

/*
void main() {
String jsonString = '''{
  "store": {
    "name": "SuperMart",
    "location": {
      "address": "123 Main Street",
      "city": "Hanoi",
      "country": "Vietnam",
      "coordinates": {
        "latitude": 21.0285,
        "longitude": 105.8542
      }
    },
    "isOpen": true,
    "categories": [
      {
        "id": 1,
        "name": "Electronics",
        "products": [
          {
            "id": "E001",
            "name": "Smartphone",
            "price": 699.99,
            "inStock": true,
            "attributes": {
              "brand": "TechBrand",
              "color": "Black",
              "storage": "128GB"
            }
          },
          {
            "id": "E002",
            "name": "Laptop",
            "price": 1299.99,
            "inStock": false,
            "attributes": {
              "brand": "TechBrand",
              "color": "Silver",
              "storage": "512GB"
            }
          }
        ]
      },
      {
        "id": 2,
        "name": "Clothing",
        "products": [
          {
            "id": "C001",
            "name": "T-Shirt",
            "price": 19.99,
            "inStock": true,
            "attributes": {
              "size": "M",
              "material": "Cotton"
            }
          }
        ]
      }
    ],
    "employees": [
      {
        "id": "EMP001",
        "name": "Alice",
        "role": "Manager",
        "contact": {
          "email": "alice@supermart.com",
          "phone": "+84-123-456-789"
        }
      }
    ],
    "lastUpdated": "2025-08-22T16:38:00+07:00"
  }
}''';

  Map<String, dynamic> jsonMap = jsonDecode(jsonString);
  var store = Store.fromJson(jsonMap['store'] as Map<String, dynamic>);
  // logger.d(store.name);
  // logger.d(store.lastUpdated);
  if (store.categories != null) {
    for (var category in store.categories!) {
      // logger.d(category!.name);
      if (category != null) {
        if (category.products != null) {
          for (var product in category.products!) {
            logger.d(product!.name);
          }
        }
      }
    }
  }
}
 */
