import 'package:cashier_app/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomeTabletView extends GetView<HomeController> {
  const HomeTabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeTabletView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeTabletView',
          style: TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
