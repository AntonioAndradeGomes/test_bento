import 'package:flutter/material.dart';
import 'package:test_bento/src/models/product_model.dart';
import 'package:test_bento/src/screens/details/widgets/add_to_cart_widget.dart';
import 'package:test_bento/src/screens/details/widgets/badge_container_widget.dart';
import 'package:test_bento/src/screens/details/widgets/header_page_details_widget.dart';
import 'package:test_bento/src/screens/details/widgets/product_details_widget.dart';
import 'package:test_bento/src/screens/details/widgets/product_title_widget.dart';
import 'package:test_bento/src/shared/widgets/carousel_widget.dart';

class DetailsPage extends StatelessWidget {
  final ProductModel product;
  const DetailsPage({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const HeaderPageDetailsWidget(),
          CarouselWidget(
            heightCarousel: 285,
            padding: EdgeInsets.zero,
            items: product.images
                .map(
                  (image) => SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      image,
                    ),
                  ),
                )
                .toList(),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(15),
              children: [
                ProductTitleWidget(
                  name: product.name,
                  assessment: product.assessment,
                  shop: product.shop,
                ),
                const BadgeContainerWidget(),
                ProductDetailsWidget(
                  details: product.details,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: AddToCartWidget(
        newValue: product.newPrice,
        oldValue: product.lastPrice,
      ),
    );
  }
}
