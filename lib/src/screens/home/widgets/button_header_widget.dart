import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:test_bento/src/shared/app_colors.dart';

class ButtonHeaderWidget extends StatelessWidget {
  final String label;
  final String urlImage;
  const ButtonHeaderWidget({
    super.key,
    required this.label,
    required this.urlImage,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(15),
          child: Ink(
            height: 80,
            decoration: BoxDecoration(
              color: AppColors.containerColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      label,
                      style: GoogleFonts.openSans(
                        color: AppColors.buttonColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: -10,
                  bottom: -8,
                  child: Image.asset(
                    height: 60,
                    urlImage,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
