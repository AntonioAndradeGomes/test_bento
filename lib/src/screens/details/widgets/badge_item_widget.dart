import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_bento/src/shared/constants/app_colors.dart';

class BadgeItemWidget extends StatelessWidget {
  final String label;
  final String urlImage;
  final Color colorWidget;
  const BadgeItemWidget({
    super.key,
    required this.label,
    required this.urlImage,
    required this.colorWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colorWidget,
          ),
          padding: const EdgeInsets.all(10),
          child: Image.asset(
            urlImage,
            height: 25,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          label,
          style: GoogleFonts.openSans(
            color: AppColors.textColor,
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
