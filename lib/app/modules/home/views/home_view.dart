import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            controller.screens[controller.currentIndex.value],
            Positioned(
              bottom: 10,
              left: 12,
              right: 12,
              child: Stack(
                children: [
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).cardColor.withOpacity(0.8),
                    ),
                    child: BottomNavigationBar(
                      backgroundColor:
                          Theme.of(context).cardColor.withOpacity(0.0),
                      currentIndex: controller.currentIndex.value,
                      onTap: controller.changeTab,
                      selectedItemColor: Colors.blue,
                      unselectedItemColor: Colors.grey,
                      items: const [
                        BottomNavigationBarItem(
                          icon: Icon(Icons.dashboard),
                          label: 'Dashboard',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.person),
                          label: 'Profile',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          margin: EdgeInsets.only(bottom: 8),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: Icon(Icons.qr_code_scanner),
          ),
        ),
      ),
    );
  }
}
