import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../pages/favourites/favourites_page.dart';
import '../pages/home/home_page.dart';
import '../pages/notifications/notifications_page.dart';
import '../pages/settings/settings_page.dart';

class CrystaNavigationBarController extends GetxController {
  var currentIndex = 0.obs;

  List<Widget> pages = [
    const HomePage(),
    const FavouritesPage(),
    const NotificationsPage(),
    const SettingsPage(),
  ];

  void changePage(int index) {
    currentIndex.value = index;
  }
}
