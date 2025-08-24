import 'dart:convert'; // for working with Json
import 'package:flutter/material.dart';

class User {
  final String? name;
  final int? age;
  bool? isDeveloper;

  User({required this.name, required this.age, required this.isDeveloper});

  /* factory User.fromJson(...): This is a special factory constructor, used to create a new object from JSON data.
 It takes a Map<String, dynamic> (representing JSON) and returns a User object. */
  //MARK: PARSE FROM JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'] as String?,
      age: json['age'] as int?,
      isDeveloper: json['isDeveloper'] as bool?,
    );
  }
}

void parseJsonToUser() {
  // Parse JSON string
  String jsonString = '{"name": "Thế Anh", "age": 30, "isDeveloper": false}';
  Map<String, dynamic> userMap = jsonDecode(jsonString);

  var user = User.fromJson(userMap);
  debugPrint(user.name);
  debugPrint('${user.age}');
  debugPrint('${user.isDeveloper}}');
}

class DemoParseJsonClass {
  List<CategoryModel?>? categories;

  DemoParseJsonClass({required this.categories});

  factory DemoParseJsonClass.fromJson(Map<String, dynamic> json) {
    return DemoParseJsonClass(
      categories: (json['categories'] as List)
          .map((categories) => CategoryModel.fromJson(categories))
          .toList(),
    );
  }
}

class CategoryModel {
  int? id;
  String? name;
  List<ProductModel?>? products;

  CategoryModel({required this.id, required this.name, required this.products});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      products: (json['products'] as List)
          .map((product) => ProductModel.fromJson(product))
          .toList(),
    );
  }
}

class ProductModel {
  String? id, name;
  double? price;
  bool? inStock;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.inStock,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      price: json['price'] as double?,
      inStock: json['inStock'] as bool?,
    );
  }
}

// Parse json string to model
void parseJsonToDemoParseJsonClass() {
  var jsonString = '''{ "categories": [
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
        }
      ]}''';

  Map<String, dynamic> jsonMap = jsonDecode(jsonString);
  var store = DemoParseJsonClass.fromJson(jsonMap);
  debugPrint('${store.categories}');
  debugPrint('${store.categories![0]!.id}');
  debugPrint('${store.categories![0]!.name}');
  debugPrint('${store.categories![0]!.products}');
  debugPrint('${store.categories![0]!.products![0]!.id}');
  debugPrint('${store.categories![0]!.products![0]!.name}');
  debugPrint('${store.categories![0]!.products![0]!.price}');
  debugPrint('${store.categories![0]!.products![0]!.inStock}');
}
