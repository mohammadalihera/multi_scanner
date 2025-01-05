import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:multi_scanner/app/core/controller/app_controller.dart';
import 'package:multi_scanner/app/core/theme/theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  AppController appController = AppController();

  runApp(Obx(
    () => GetMaterialApp(
      initialBinding: BindingsBuilder(() {
        Get.put<AppController>(appController);
      }),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: appController.isDarkMode.value ? darkTheme : darkTheme,
    ),
  ));
}
