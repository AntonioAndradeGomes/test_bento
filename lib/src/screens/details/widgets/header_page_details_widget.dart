import 'package:flutter/material.dart';
import 'package:test_bento/src/shared/constants/app_colors.dart';

class HeaderPageDetailsWidget extends StatelessWidget {
  const HeaderPageDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;
    return Padding(
      padding: EdgeInsets.only(
        top: statusBarHeight,
        left: 15,
        right: 15,
        bottom: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton.filledTonal(
            onPressed: Navigator.of(context).pop,
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
            ),
            style: IconButton.styleFrom(
              backgroundColor: AppColors.categoryItem,
            ),
          ),
          IconButton.filledTonal(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
            ),
            style: IconButton.styleFrom(
              backgroundColor: AppColors.categoryItem,
            ),
          ),
        ],
      ),
    );
  }
}
