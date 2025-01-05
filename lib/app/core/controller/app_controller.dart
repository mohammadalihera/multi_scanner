import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  // Observable for theme mode
  var isDarkMode = false.obs;

  // Toggle theme
  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }
}
