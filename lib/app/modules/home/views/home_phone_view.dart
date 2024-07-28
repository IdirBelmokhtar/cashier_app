import 'package:cashier_app/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomePhoneView extends GetView<HomeController> {
  const HomePhoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePhoneView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomePhoneView',
          style: TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
