import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:project/controllers/font_controller.dart';

class FontSelectorPage extends StatelessWidget {
  final Function(String) onFontSelected;

  const FontSelectorPage({
    super.key,
    required this.onFontSelected,
  });

  @override
  Widget build(BuildContext context) {
    final FontController fontController = Get.find<FontController>();

    final List<String> fonts = [
      'Roboto',
      'Lobster',
      'Acme',
      'Open Sans',
      'Montserrat',
      'Poppins',
      'Inter',
      'Oswald',
      'Playfair Display',
      'Quicksand',
    ];

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        backgroundColor: Colors.green,
        elevation: 0,
        title: Obx(() {
          return Text(
            'Select Font',
            style: GoogleFonts.getFont(
              fontController.currentFont.value,
            ),
          );
        }),
      ),
      body: ListView.builder(
        itemCount: fonts.length,
        itemBuilder: (BuildContext context, int index) {
          final font = fonts[index];

          return Obx(() {
            final isSelected = font == fontController.currentFont.value;

            return Card.outlined(
              child: ListTile(
                title: Text(
                  font,
                  style: GoogleFonts.getFont(font),
                ),
                trailing: isSelected
                    ? const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ) : null,
                onTap: () {
                  fontController.changeFont(font);
                  onFontSelected(font);
                },
              ),
            );
          });
        },
      ),
    );
  }
}
