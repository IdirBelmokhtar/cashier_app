import 'package:cashier_app/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomeWatchView extends GetView<HomeController> {
  const HomeWatchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeWatchView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeWatchView',
          style: TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
