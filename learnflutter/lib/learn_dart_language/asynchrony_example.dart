import 'dart:math';
import 'package:flutter/material.dart';


class ApiErrorException implements Exception {
  final String message;
  ApiErrorException(this.message);
  @override
  String toString() {
    return 'ApiErrorException: $message';
  }
}

class AsynchronyExample {
  var random = Random();

  Future<Map<String, Object>?> fetchUserData() async {
    debugPrint('callApi...');
    await Future.delayed(Duration(seconds: 2));
    var randomNumber = random.nextInt(10);
    if (randomNumber % 2 == 0) {
      var data = {'usernamer': 'Hao Nguyen', 'age': 30, 'isDeveloper': true};
      return data;
    } else {
      throw ApiErrorException("Failed fetch data!!!");
    }
  }

  void fetchBtnTapped() async {
    // debugPrint("fetch button tapped...");
    // try {
    //   var data = await fetchUserData();
    //   debugPrint(data);
    // } catch (error) {
    //   debugPrint(error);
    // }
    // debugPrint("finish fetchUserData...");

    fetchUserData()
        .then((data) {
          debugPrint('$data');
        })
        .catchError((error) {
          debugPrint('$error');
        });
  }

  Future<int?> processNumber(int a, int b, int Function(int, int) callback) {
    debugPrint('Process number $a and $b...');
    // Return an Future and use .then() to process result
    return Future.delayed(Duration(seconds: 2)).then((_) {
      if (Random().nextInt(10) % 2 == 0) {
        int result = callback(a, b);
        return result;
      } else {
        return null;
      }
    });
  }

  // processNumber(5, 5, (a, b) => a + b)
  //   .then((result) {
  //     if (result != null) {
  //       print('Result: $result'); // 10
  //     } else {
  //       print('Result are null');
  //     }
  //   });

}
