import 'package:cashier_app/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SidebarContainer extends GetView<HomeController> {
  const SidebarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedContainer(
          duration: Duration(milliseconds: 260),
          width: controller.isSideBarOpen.value ? 260 : 72,
          margin: EdgeInsets.symmetric(vertical: 12.0),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildNavItem(
                icon: Icons.home_rounded,
                label: 'Home',
                index: 0,
                controller: controller,
              ),
              buildNavItem(
                icon: Icons.credit_card,
                label: 'Transaction',
                index: 1,
                controller: controller,
              ),
              buildNavItem(
                icon: Icons.person,
                label: 'Casier',
                index: 2,
                controller: controller,
              ),
              buildNavItem(
                icon: Icons.settings,
                label: 'Settings',
                index: 3,
                controller: controller,
              ),
              Spacer(),
              GestureDetector(
                onTap: () => controller.isSideBarOpen.value =
                    !controller.isSideBarOpen.value,
                child: Row(
                  children: [
                    Spacer(),
                    Icon(
                      !controller.isSideBarOpen.value
                          ? Icons.arrow_forward_ios
                          : Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    SizedBox(width: 22.0),
                  ],
                ),
              ),
              SizedBox(height: 18.0),
            ],
          ),
        ));
  }
}

Widget buildNavItem({
  required IconData icon,
  required String label,
  required int index,
  required HomeController controller,
}) {
  return GestureDetector(
    onTap: () => controller.selectIndex(index),
    child: Container(
      margin: EdgeInsets.all(12.0),
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: controller.selectedIndex.value == index
            ? Colors.white
            : Colors.blue,
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: controller.selectedIndex.value == index
                ? Colors.blue
                : Colors.white,
          ),
          if (controller.isSideBarOpen.value) SizedBox(width: 10.0),
          if (controller.isSideBarOpen.value)
            Text(
              label,
              style: TextStyle(
                color: controller.selectedIndex.value == index
                    ? Colors.blue
                    : Colors.white,
              ),
            ),
        ],
      ),
    ),
  );
}
