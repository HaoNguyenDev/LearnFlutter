import 'package:learnflutter/learn_dart_language/app_logger.dart';

//===========================
// MARK: GENERIC TYPE
//===========================

class Stack<T> {
  final List<T> _stacks = [];

  void push(T element) {
    _stacks.add(element);
  }

  T? pop() {
    return _stacks.isNotEmpty ? _stacks.removeLast() : null;
  }

  List<T> getStacks() {
    return (_stacks.isNotEmpty) ? _stacks : [];
  }
}

class Queue<T> {
  final List<T> _queues = [];

  void enqueue(T element) {
    _queues.add(element);
  }

  T? dequeue() {
    return _queues.isNotEmpty ? _queues.removeAt(0) : null;
  }

  List<T> getQueues() {
    return (_queues.isNotEmpty) ? _queues : [];
  }
}

void showTypeOf<T>(T value) {
  Logger.log('Type of $value is ${value.runtimeType}');
}
