// MARK: EXCEPTION
import 'package:flutter/material.dart';

class CustomErrorException {
  String? errorMessage;
  int? errorCode;
  CustomErrorException(this.errorMessage, this.errorCode);
}

class CustomAnException implements Exception {
  Object? errorObject;
  CustomAnException(this.errorObject);
}

class TestExceptionClass {
  String input_100(int? number) {
    if (number == null) {
      throw CustomAnException(CustomErrorException('Your input is empty', 0));
    } else if (number < 0) {
      throw CustomAnException(
        CustomErrorException('Your input $number is negative', number),
      );
    } else if ((number > 0) && (number < 100)) {
      throw CustomAnException(
        CustomErrorException('Your input $number is positive', number),
      );
    }
    return 'Success!!! You just input $number';
  }
}

class CallFunctionException {
  void testExceptionResult() {
    var test = TestExceptionClass();
    try {
      var result = test.input_100(100);
      debugPrint('Result: $result');
    } on CustomAnException catch (error) {
      var customError = error.errorObject as CustomErrorException;
      debugPrint('CustomAnException: ${customError.errorMessage}');
    } catch (error) {
      debugPrint('Error: $error');
    } finally {
      debugPrint('CallFunctionException finally');
    }
  }
}

////////////////////////////////////////////////////////////////////////////////////////////

//====================
// MARK: EXCEPTION
//====================

/// Implement exceptions
class InvalidEmailException implements Exception {
  final String message;
  InvalidEmailException(this.message);
}

class InvalidPasswordException implements Exception {
  final String message;
  InvalidPasswordException(this.message);
}

class UserNotFoundException implements Exception {
  final String message;
  UserNotFoundException(this.message);
}

class UserInfo {
  String email;
  String name;
  String token;
  UserInfo(this.email, this.name, this.token);
}

final Map<String, String> mockLoginInfo = {
  'user1@gmail.com': 'password1',
  'user2@gmail.com': 'password2',
  'user3@gmail.com': 'password3',
};

Future<UserInfo> callLoginApi(String email, String password) async {
  debugPrint('callLoginApi...');
  await Future.delayed(Duration(seconds: 2));
  if (!email.contains('@')) {
    throw InvalidEmailException('Invalid email');
  }

  if (!mockLoginInfo.keys.contains(email)) {
    throw UserNotFoundException('User not found');
  }

  if (mockLoginInfo[email] != password) {
    throw InvalidPasswordException('Invalid password');
  }
  return UserInfo(email, 'Hao Nguyen', 'token7346523478');
}

Future<void> userDoLogin(String email, String password) async {
  try {
    var userInfo = await callLoginApi(email, password);
    debugPrint('Login success! Hi ${userInfo.name} email: ${userInfo.email}');
  } on InvalidEmailException catch (error) {
    debugPrint('InvalidEmailException: $error');
  } on InvalidPasswordException catch (error) {
    debugPrint('InvalidPasswordException: $error');
  } on UserNotFoundException catch (error) {
    debugPrint('UserNotFoundException: $error');
  } finally {
    debugPrint('userDoLogin finally');
  }
}

//MARK: MAIN
// void main() async {
//   await userDoLogin('user1@gmail.com', 'password1');
// }
