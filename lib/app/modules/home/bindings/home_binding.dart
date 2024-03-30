import 'package:get/get.dart';
import 'package:taste_of_perm/app/data/providers/events.dart';
import 'package:taste_of_perm/app/data/repositories/events.dart';
import 'package:taste_of_perm/app/data/services/api_service.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  final httpClient = Get.find<ApiService>();
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(EventsRepository(
          apiClient: EventsApiClient(httpClient: httpClient.httpClient))),
    );
  }
}
