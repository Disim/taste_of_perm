import 'package:get/get.dart';

import '../controllers/about_event_controller.dart';

class AboutEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AboutEventController>(
      () => AboutEventController(),
    );
  }
}
