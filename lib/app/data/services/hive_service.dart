import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService extends GetxService {
  static HiveService get to => Get.find();
  late final Box box;
  Future<HiveService> init() async {
    await Hive.initFlutter();
    box = await Hive.openBox(BoxNames.exercises.name);
    return this;
  }

  bool chechVisits(String uuid) {
    return box.get(uuid) != null;
  }

  checkVisit(String uuid) {
    box.put(uuid, '');
  }

  uncheckVisit(String uuid) {
    box.delete(uuid);
  }
}

enum BoxNames {
  exercises,
}
