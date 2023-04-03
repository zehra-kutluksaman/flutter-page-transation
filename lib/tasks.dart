import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index_controller.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // final IndexController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 48, 44, 44),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 100,
                color: Colors.orange,
              ),
              Container(
                height: 300,
                width: 100,
                color: Colors.red,
                child: const Center(
                  child: Text("TASKS"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
