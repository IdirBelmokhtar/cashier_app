import 'package:cashier_app/app/modules/cashier/cashier_view.dart';
import 'package:cashier_app/app/modules/home/controllers/home_controller.dart';
import 'package:cashier_app/app/modules/home/views/widgets/sidebar_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomeDesktopView extends GetView<HomeController> {
  const HomeDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 10, 72),
      body: Row(
        children: [
          SidebarContainer(),
          Expanded(
            child: Obx(
              () {
                return controller.selectedIndex.value == 0
                    ? showIndex(controller.selectedIndex.value)
                    : controller.selectedIndex.value == 1
                        ? showIndex(controller.selectedIndex.value)
                        : controller.selectedIndex.value == 2
                            ? CashierView()
                            : controller.selectedIndex.value == 3
                                ? showIndex(controller.selectedIndex.value)
                                : showIndex(controller.selectedIndex.value);
              },
            ),
          ),
          // Obx(() { controller.selectedIndex.value == 0 ? CashierView() : controller.selectedIndex.value == 1 ? CashierView() : CashierView()};),
        ],
      ),
    );
  }
}
Widget showIndex(int index) {
  return Container(
    margin: EdgeInsets.all(12.0),
    color: Colors.blue[800],
    child: Center(
      child: Text(
        'Selected Index: $index',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    ),
  );
}