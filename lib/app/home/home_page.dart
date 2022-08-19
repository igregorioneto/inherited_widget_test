import 'package:flutter/material.dart';
import 'package:inherited_widget_test/app/home/counter_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller =
        context.dependOnInheritedWidgetOfExactType<CounterController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: controller!.counter,
          builder: (_, value, child) {
            return Text('$value');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
