import 'package:flutter/material.dart';
import 'package:test_bento/src/models/product_model.dart';
import 'package:test_bento/src/shared/app_colors.dart';

class DetailsPage extends StatelessWidget {
  final ProductModel product;
  const DetailsPage({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: statusBarHeight + 5,
              left: 15,
              right: 15,
              bottom: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton.filledTonal(
                  onPressed: () {},
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
          ),
          Container(
            color: Colors.pink,
            height: 250,
            width: double.infinity,
            child: Expanded(
              child: Image.asset(
                product.images.first,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
