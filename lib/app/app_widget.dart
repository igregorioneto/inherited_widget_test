import 'package:flutter/material.dart';
import 'package:inherited_widget_test/app/home/counter_controller.dart';
import 'package:inherited_widget_test/app/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterController(child: HomePage()),
    );
  }
}
