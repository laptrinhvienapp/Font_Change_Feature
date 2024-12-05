import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/controllers/font_controller.dart';
import 'package:get/get.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.find<FontController>();

    return Scaffold(
      body: Center(
        child: Text(
          'Notifications Page',
          style: GoogleFonts.getFont(
            fontController.currentFont.value,
          ),
        ),
      ),
    );
  }
}
