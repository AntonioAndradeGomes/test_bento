import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_bento/src/models/product_model.dart';
import 'package:test_bento/src/shared/constants/app_colors.dart';
import 'package:test_bento/src/shared/widgets/carousel_widget.dart';

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
          ),
          CarouselWidget(
            heightCarousel: 285,
            padding: EdgeInsets.zero,
            items: product.images
                .map((image) => SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        image,
                      ),
                    ))
                .toList(),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(15),
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        product.name,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xFFfec01e),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            product.assessment.toStringAsFixed(1),
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
                    )
                  ],
                ),
                Text(
                  'Shop: ${product.shop}',
                ),
                Text(
                  'Details',
                ),
                Text(
                  product.details,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
