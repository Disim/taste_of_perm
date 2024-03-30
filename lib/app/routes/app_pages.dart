import 'package:get/get.dart';

import '../modules/about_event/bindings/about_event_binding.dart';
import '../modules/about_event/views/about_event_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_EVENT,
      page: () => const AboutEventView(),
      binding: AboutEventBinding(),
    ),
  ];
}
