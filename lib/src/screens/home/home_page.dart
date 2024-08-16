import 'package:flutter/material.dart';
import 'package:test_bento/src/screens/home/widgets/carousel_promotions_widget.dart';
import 'package:test_bento/src/screens/home/widgets/categories_widget.dart';
import 'package:test_bento/src/screens/home/widgets/grid_products_widget.dart';
import 'package:test_bento/src/screens/home/widgets/header_widget.dart';
import 'package:test_bento/src/screens/home/widgets/row_buttons_header_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const HeaderWidget(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              children: const [
                RowButtonsHeaderWidget(),
                CarouselPromotionsWidget(),
                CategoriesWidget(),
                GridProductsWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
