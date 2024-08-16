import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_bento/src/models/product_model.dart';
import 'package:test_bento/src/screens/home/widgets/product_item_widget.dart';
import 'package:test_bento/src/shared/app_colors.dart';

class GridProductsWidget extends StatelessWidget {
  const GridProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Today's Special",
                    style: GoogleFonts.openSans(
                      color: AppColors.textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "See all",
                    style: GoogleFonts.openSans(
                      color: AppColors.containerColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          GridView.builder(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 20,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.80,
            ),
            itemCount: productsList.length,
            itemBuilder: (_, index) {
              final product = productsList[index];
              return ProductItemWidget(
                product: product,
              );
            },
          ),
        ],
      ),
    );
  }
}
