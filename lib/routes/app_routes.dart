part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  // static const CASHIER = _Paths.CASHIER;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  // static const CASHIER = '/cashier';
}
