import 'package:cashier_app/app/modules/home/views/home_desktop_view.dart';
import 'package:cashier_app/app/modules/home/views/home_tablet_view.dart';
import 'package:cashier_app/app/modules/home/views/home_phone_view.dart';
import 'package:cashier_app/app/modules/home/views/home_watch_view.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomeResponsiveView extends GetResponsiveView {
  HomeResponsiveView({super.key});

  @override
  Widget? desktop() {
    // TODO: implement desktop
    return HomeDesktopView();
  }

  @override
  Widget? tablet() {
    // TODO: implement tablet
    return HomeTabletView();
  }

  @override
  Widget? phone() {
    // TODO: implement phone
    return HomePhoneView();
  }

  @override
  Widget? watch() {
    // TODO: implement watch
    return HomeWatchView();
  }
}
