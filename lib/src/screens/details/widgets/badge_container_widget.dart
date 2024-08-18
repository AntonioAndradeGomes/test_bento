import 'package:flutter/material.dart';
import 'package:test_bento/src/screens/details/widgets/badge_item_widget.dart';
import 'package:test_bento/src/shared/constants/app_assets.dart';
import 'package:test_bento/src/shared/constants/app_colors.dart';

class BadgeContainerWidget extends StatelessWidget {
  const BadgeContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: AppColors.categoryItem,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BadgeItemWidget(
            label: 'Vegetarian',
            urlImage: AppAssets.vegetarian,
            colorWidget: AppColors.vegetarianColor,
          ),
          BadgeItemWidget(
            label: 'Halal Food',
            urlImage: AppAssets.halal,
            colorWidget: AppColors.halalColor,
          ),
          BadgeItemWidget(
            label: 'Gluten-free',
            urlImage: AppAssets.gluten,
            colorWidget: AppColors.glutenColor,
          ),
        ],
      ),
    );
  }
}
