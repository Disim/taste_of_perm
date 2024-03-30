import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taste_of_perm/app/data/services/api_service.dart';
import 'package:taste_of_perm/app/data/services/hive_service.dart';

import 'app/routes/app_pages.dart';

initService() async {
  await Get.putAsync(() => ApiService().init());
  await Get.putAsync(() => HiveService().init());
}

void main() async {
  await initService();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
