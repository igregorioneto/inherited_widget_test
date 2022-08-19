import 'package:flutter/material.dart';

class CounterController extends InheritedWidget {
  final counter = ValueNotifier<int>(0);

  increment() => counter.value++;

  CounterController({int initialValue = 0, required Widget child})
      : super(child: child) {
    counter.value = initialValue;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}
