import 'package:get/get.dart';
import 'package:taste_of_perm/app/data/models/event/event.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutEventController extends GetxController {
  final Event _event = Get.arguments;
  String get title => _event.title;
  String get description => _event.description;
  String get notice => _event.notice;
  String get link => _event.link;
  String get source => _event.source;
  String? get image => _event.image;

  Future<void> openLink() async {
    if (!await launchUrl(Uri.parse(link))) {
      throw Exception('Could not launch $link');
    }
  }

  Future<void> openSource() async {
    if (!await launchUrl(Uri.parse(source))) {
      throw Exception('Could not launch $source');
    }
  }
}
