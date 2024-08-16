import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_bento/src/models/category_enum.dart';
import 'package:test_bento/src/shared/constants/app_colors.dart';

class CategoryItemWidget extends StatelessWidget {
  final CategoryEnum category;
  const CategoryItemWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: category == CategoryEnum.vegan
                ? AppColors.categoryVegan
                : AppColors.categoryItem,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(
            category.url,
            height: 50,
            width: 50,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            category.label,
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              color: AppColors.buttonColor,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        )
      ],
    );
  }
}
