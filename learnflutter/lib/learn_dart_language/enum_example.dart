import 'package:learnflutter/learn_dart_language/app_logger.dart';

// MARK: Simple Enums
enum DayOfWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

// MARK: Enhanced Enums
enum TrafficLight {
  red(duration: 30, stillWorking: true),
  yellow(duration: 5, stillWorking: false),
  green(duration: 45, stillWorking: true);

  // declare a field
  final int duration;
  final bool stillWorking;

  // declare a constructor
  const TrafficLight({required this.duration, required this.stillWorking});

  String getTitle() {
    switch (this) {
      case TrafficLight.red:
        return 'Red';
      case TrafficLight.yellow:
        return 'Yellow';
      case TrafficLight.green:
        return 'Green';
    }
  }

  // declare a method
  void displayInfo() {
    Logger.log(
      '$name light have time to wait $duration seconds and it ${stillWorking ? 'still working' : 'not working'}.',
    );
  }
}

// MARK: Error Enums
enum TestErrorEnum {
  lowerThanZero(errorCode: -1),
  equalToZero(errorCode: 0),
  greaterThanZero(errorCode: 1);

  final int errorCode;
  const TestErrorEnum({required this.errorCode});

  String get message {
    switch (this) {
      case TestErrorEnum.lowerThanZero:
        return 'Lower than zero';
      case TestErrorEnum.equalToZero:
        return 'Equal to zero';
      case TestErrorEnum.greaterThanZero:
        return 'Greater than zero';
    }
  }

  // Exception get asException => Exception(message);
}

enum ErrorTypeDemo { 
  invalidInput,
  networkFailure,
  unauthorizedAccess
}

// Implement Error Enum with Exceptions 
class AppErrorDemo implements Exception {
  final ErrorTypeDemo errorType;
  final String? message;

  AppErrorDemo(this.errorType, [this.message]);

  @override
  String toString() {
    return 'AppErrorDemo: {errorType: $errorType, message: $message}';
  }
}

// MARK: Test Void
class TestEnum {
  DayOfWeek day = DayOfWeek.friday;

  void testEnum() {
    /* 
    switch (day) {
      case DayOfWeek.monday:
        Logger.log('Today is Monday.');
        break;
      case DayOfWeek.tuesday:
        Logger.log('Today is Tuesday.');
        break;
      case DayOfWeek.wednesday:
        Logger.log('Today is Wednesday.');
        break;
      case DayOfWeek.thursday:
        Logger.log('Today is Thursday.');
        break;
      case DayOfWeek.friday:
        Logger.log('Today is Friday.');
        break;
      case DayOfWeek.saturday:
        Logger.log('Today is Saturday.');
        break;
      case DayOfWeek.sunday:
        Logger.log('Today is Sunday.');
        break;
    }

    Logger.log('Index of current enum value: ${day.index}');
    Logger.log('Is today Monday? ${day == DayOfWeek.monday}');
    Logger.log('All days of week: ${DayOfWeek.values}');
    for (var day in DayOfWeek.values) {
      Logger.log(day);
    }
    */

    /*
    TrafficLight currentLight = TrafficLight.green;
    Logger.log(
      'Time of ${currentLight.getTitle()} light: ${currentLight.duration} and it ${currentLight.stillWorking ? 'still working' : 'not working'}}',
    );
    currentLight.displayInfo();
     */

    // try {
    //   inputAnNumber(-1);
    // } on TestErrorEnum catch (error) {
    //   Logger.log(error.errorCode);
    //   Logger.log(error.message);
    //   // Logger.log(enumError.asException);
    // } catch (error) {
    //   Logger.log(error);
    // }

    try {
      performAction(ErrorTypeDemo.networkFailure);
    } catch (error) {
      if (error is AppErrorDemo) {
        switch (error.errorType) {  
          case ErrorTypeDemo.invalidInput:
            Logger.log(error.errorType);
            break;
          case ErrorTypeDemo.networkFailure:
            Logger.log(error.errorType);
            break;  
          case ErrorTypeDemo.unauthorizedAccess:
            Logger.log(error.errorType);
            break;  
        }
      }
    }
  }

  void inputAnNumber(int number) {
    if (number < 0) {
      throw TestErrorEnum.lowerThanZero;
    } else if (number == 0) {
      throw TestErrorEnum.equalToZero;
    } else {
      throw TestErrorEnum.greaterThanZero;
    }
  }

  void performAction(ErrorTypeDemo errorType) {
    switch (errorType) {
      case ErrorTypeDemo.invalidInput:
        throw AppErrorDemo(ErrorTypeDemo.invalidInput, 'Invalid input');
      case ErrorTypeDemo.networkFailure:
        throw AppErrorDemo(ErrorTypeDemo.networkFailure, 'Network failure');
      case ErrorTypeDemo.unauthorizedAccess:
        throw AppErrorDemo(ErrorTypeDemo.unauthorizedAccess,'Unauthorized access');
    }
  }
}
