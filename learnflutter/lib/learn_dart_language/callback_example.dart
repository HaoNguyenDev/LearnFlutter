import 'dart:math';
import 'package:flutter/rendering.dart';
import 'package:learnflutter/main.dart';

class ResultTestObject {
  String? nameOfTask;
  String? data;
  ResultTestObject(this.nameOfTask, [this.data]);
}

// Define callback type
typedef DataCallback = void Function(String data);
typedef ErrorCallback = void Function(String error);

class CallBackExample {
  // MARK: Simple
  void simpleCallback(String task, void Function(ResultTestObject) callback) {
    log.d('Performing $task...');
    Future.delayed(Duration(seconds: 2), () {
      callback(ResultTestObject(task));
    });
  }

  // MARK: Optional Prameter
  void optionalCallback(
    String task, [
    void Function(ResultTestObject)? callback,
  ]) {
    log.d('Performing $task...');
    Future.delayed(Duration(seconds: 2), () {
      if (callback != null) {
        // check if callback is not null
        callback(ResultTestObject(task));
      }
    });
  }

  // MARK: Multiple parameter
  int? processNumber(int a, int b, int Function(int, int) callback) {
    log.d('Process number $a and $b...');
    return callback(a, b);
  }

  void callUrl( String url, void Function(ResultTestObject, Exception?) result) {
    log.d('Calling $url...');
    Future.delayed(Duration(seconds: 2), () {
      if (Random().nextInt(10) % 2 == 0) {
        result(ResultTestObject("$url success!"), null);
      } else {
        result(ResultTestObject(url), Exception('Call $url failed!'));
      }
    });
  }

  void uploadData(Map<String, dynamic> data, void Function(ResultTestObject) onSuccess, void Function(Exception) onFailed) {
    log.d('Uploading data...');
    Future.delayed(Duration(seconds: 2), () {
      if (Random().nextInt(10) % 2 == 0) {
        onSuccess(ResultTestObject('Upload data success!'));
      } else {
        onFailed(Exception('Upload data failed!'));
      }
    });
  }

  void fetchData(DataCallback data, ErrorCallback error) {
    log.d('Fetching data...');
    Future.delayed(Duration(seconds: 2), () {
      if (Random().nextInt(10) % 2 == 0) {
        data('Fetch data success!');
      } else {
        error('Fetch data failed!');
      }
    });
  }

  Future<String?> fetchDataWithFuture(bool shouldSuccess) async {
    log.d('Fetching data...');
    await Future.delayed(Duration(seconds: 2));
    if (shouldSuccess) {
      return 'Fetch data success!';
    } else {
      throw Exception('Fetch data failed!');
    }
  }

  Future<String> loadTask() {
    return Future.delayed(Duration(seconds: 2)).then((_) {
      return 'Task 1';
    });
  }

}

//MARK: MAIN 
/*
  void main() {
  var callBackExample = CallBackExample();

  // callBackExample.simpleCallback('Task 1', (result) {
  //   log.d('Result: ${result.nameOfTask}');
  // });

  // Callback are function parameter
  // callBackExample.processNumber(2, 3, (a, b) => a + b);  // lambda param

  // int multiplyFormular(int a, int b) => a * b;  // define an function param
  // int sumFormular(int a, int b) => a + b;
  // var result = callBackExample.processNumber(2, 3, sumFormular);
  // log.d('Result: $result');

  // callBackExample.callUrl('https://google.com', (result, error) {
  //   if (error != null) {
  //     log.d('Error: ${error.toString()}');
  //   } else {
  //     log.d('Result: ${result.nameOfTask}');
  //   }
  // });

  // var mockData = {
  //   'image': 'hash image code 273465',
  // };
  // callBackExample.uploadData(mockData, (result) {
  //   log.d('Result: ${result.nameOfTask}');
  // }, (error) {
  //   log.d('Error: ${error.toString()}');
  // });

  // try {
  //   var result = await callBackExample.fetchDataWithFuture(true);
  //   log.d('Result: $result');
  // } catch (error) {
  //   log.d('Error: ${error.toString()}');
  // }
  }
 */