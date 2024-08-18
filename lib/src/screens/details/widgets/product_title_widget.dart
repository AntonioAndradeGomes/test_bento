import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_bento/src/shared/constants/app_colors.dart';

class ProductTitleWidget extends StatelessWidget {
  final String name;
  final double assessment;
  final String shop;
  const ProductTitleWidget({
    super.key,
    required this.name,
    required this.assessment,
    required this.shop,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                name,
                style: GoogleFonts.openSans(
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Material(
              elevation: 0.1,
              borderRadius: BorderRadius.circular(20),
              //  color: Colors.transparent,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Color(0xFFfec01e),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      assessment.toStringAsFixed(1),
                      style: GoogleFonts.openSans(
                        color: AppColors.textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Shop: $shop',
          style: GoogleFonts.openSans(
            color: AppColors.textColor,
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
