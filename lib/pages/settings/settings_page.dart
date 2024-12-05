import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:project/controllers/font_controller.dart';

import '../../feature/font_selector/font_selector.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final FontController fontController = Get.find<FontController>();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: ListTile(
            leading: const Icon(
              Icons.font_download,
              color: Colors.black,
            ),
            tileColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            title: Obx(() => Text(
              fontController.currentFont.value,
              style: GoogleFonts.getFont(fontController.currentFont.value),
            )),
            trailing: const Icon(
              Icons.navigate_next,
              color: Colors.black,
            ),
            onTap: () {
              Get.to(() => FontSelectorPage(
                onFontSelected: (String newFont) {
                  fontController.changeFont(newFont);
                },
              ));
            },
          ),
        ),
      ),
    );
  }
}
