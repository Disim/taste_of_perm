import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/about_event_controller.dart';

class AboutEventView extends GetView<AboutEventController> {
  const AboutEventView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
        centerTitle: true,
      ),
      body: Text(
        controller.notice,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
