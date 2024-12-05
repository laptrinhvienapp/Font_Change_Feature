import 'package:get/get.dart';

class FontController extends GetxController {
  var currentFont = 'Lobster'.obs;

  void changeFont(String newFont) {
    currentFont.value = newFont;
  }
}