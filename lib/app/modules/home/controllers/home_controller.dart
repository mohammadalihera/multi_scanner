import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_scanner/app/modules/dashboard/views/dashboard_view.dart';
import 'package:multi_scanner/app/modules/profile/views/profile_view.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;

  void changeTab(int index) {
    currentIndex.value = index;
  }

  final List<Widget> screens = [
    DashboardView(),
    ProfileView(),
  ];
}
