import 'package:get/get.dart';
import 'package:taste_of_perm/app/data/providers/events.dart';
import 'package:taste_of_perm/app/data/services/hive_service.dart';

class EventsRepository {
  final EventsApiClient apiClient;

  EventsRepository({required this.apiClient});
  final hiveService = Get.find<HiveService>();

  getAll() {
    return apiClient.getAll();
  }

  bool checkVisits(String uuid) {
    return hiveService.chechVisits(uuid);
  }

  checkVisited(String event) {
    return hiveService.checkVisit(event);
  }

  uncheckVisited(String uuid) {
    return hiveService.uncheckVisit(uuid);
  }
}
