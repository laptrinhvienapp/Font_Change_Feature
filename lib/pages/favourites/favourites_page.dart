import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/controllers/font_controller.dart';
import 'package:get/get.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.find<FontController>();

    return Scaffold(
      body: Center(
        child: Text(
          'Favourites Page',
          style: GoogleFonts.getFont(
            fontController.currentFont.value,
          ),
        ),
      ),
    );
  }
}
