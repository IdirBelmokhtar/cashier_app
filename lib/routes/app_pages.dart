import 'package:cashier_app/app/modules/home/bindings/home_binding.dart';
import 'package:cashier_app/app/modules/home/home_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPage {
  AppPage._();
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeResponsiveView(),
      binding: HomeBinding(),
    ),
    // GetPage(
    //   name: _Paths.CASHIER,
    //   page: () => HomeResponsiveView(),
    //   binding: HomeBinding(),
    // ),
  ];
}
