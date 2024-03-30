import 'package:get/get.dart';
import 'package:taste_of_perm/app/data/models/event/event.dart';

class AboutEventController extends GetxController {
  final Event _event = Get.arguments;
  String get title => _event.title;
  String get notice => _event.notice;
  String get link => _event.link;
  String get source => _event.source;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
