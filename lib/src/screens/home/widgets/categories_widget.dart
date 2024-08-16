import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_bento/src/models/category_enum.dart';
import 'package:test_bento/src/screens/home/widgets/category_item_widget.dart';
import 'package:test_bento/src/shared/app_colors.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Text(
            'Shop by category',
            style: GoogleFonts.openSans(
              color: AppColors.textColor,
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 110,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: CategoryEnum.values.length,
            itemBuilder: (context, index) {
              final category = CategoryEnum.values[index];
              return CategoryItemWidget(
                category: category,
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
          ),
        ),
      ],
    );
  }
}
