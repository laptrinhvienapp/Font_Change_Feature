import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:project/controllers/crystal_navigation_bar_controller.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    CrystaNavigationBarController crystaNavigationBarController = Get.find<CrystaNavigationBarController>();

    return Scaffold(
      extendBody: true,
      body: Obx(
          () => crystaNavigationBarController.pages[crystaNavigationBarController.currentIndex.value],
      ),
      bottomNavigationBar: Obx(() {
        return CrystalNavigationBar(
          backgroundColor: Colors.white,
          items: [
            CrystalNavigationBarItem(
              icon: Icons.home,
              selectedColor: Colors.blue,
              unselectedColor: Colors.grey,
            ),
            CrystalNavigationBarItem(
              icon: Icons.favorite,
              selectedColor: Colors.red,
              unselectedColor: Colors.grey,
            ),
            CrystalNavigationBarItem(
              icon: Icons.notifications,
              selectedColor: Colors.orange,
              unselectedColor: Colors.grey,
            ),
            CrystalNavigationBarItem(
              icon: Icons.settings,
              selectedColor: Colors.black,
              unselectedColor: Colors.grey,
            ),
          ],
          currentIndex: crystaNavigationBarController.currentIndex.value,
          onTap: (int index) {
            crystaNavigationBarController.changePage(index);
          },
        );
      }),
    );
  }
}
