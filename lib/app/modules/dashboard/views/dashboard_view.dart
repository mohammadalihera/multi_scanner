import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:multi_scanner/app/modules/dashboard/views/widgets/business_card_tile.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   title: const Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text(
      //         'Good Morning',
      //         style: TextStyle(
      //           fontWeight: FontWeight.bold,
      //           fontSize: 12,
      //         ),
      //       ),
      //       Text(
      //         'Annette',
      //         style: TextStyle(
      //           fontWeight: FontWeight.bold,
      //           fontSize: 20,
      //         ),
      //       ),
      //     ],
      //   ),
      //   actions: [
      //     IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code))
      //   ],
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              // margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'Annette',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.qr_code))
                    ],
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      hintText: 'Search cards...',
                      filled: true,
                      fillColor: const Color(0xff323235),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.separated(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        itemCount: 20,
                        padding: EdgeInsets.only(bottom: 85, top: 20),
                        itemBuilder: (context, index) {
                          return BusinessCardTile();
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
