import 'package:logger/web.dart';
import 'dart:math';

class AsynchronyExample {
  var logger = Logger();
  var random = Random();

  Future<Map<String, Object>?> fetchUserData() async {
    logger.d('callApi...');
    await Future.delayed(Duration(seconds: 2));
    var randomNumber = random.nextInt(10);
    if (randomNumber % 2 == 0) {
      var data = {'usernamer': 'Hao Nguyen', 'age': 30, 'isDeveloper': true};
      return data;
    } else {
      throw Exception('No Data');
    }
  }

  void fetchBtnTapped() async {
    // logger.d("fetch button tapped...");
    // try {
    //   var data = await fetchUserData();
    //   logger.d(data);
    // } catch (error) {
    //   logger.d(error);
    // }
    // logger.d("finish fetchUserData...");

    fetchUserData()
        .then((data) {
          logger.d(data);
        })
        .catchError((error) {
          logger.d('Đã xảy ra lỗi: $error');
        });
  }
}
