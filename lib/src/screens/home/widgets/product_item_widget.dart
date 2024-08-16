import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_bento/src/models/product_model.dart';
import 'package:test_bento/src/screens/details/details_page.dart';
import 'package:test_bento/src/shared/app_colors.dart';

class ProductItemWidget extends StatelessWidget {
  final ProductModel product;
  const ProductItemWidget({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailsPage(
              product: product,
            ),
          ),
        );
      },
      child: Ink(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: product.color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Image.asset(
                  product.images.first,
                  height: 100,
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Ink(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: GoogleFonts.openSans(
                            color: AppColors.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        Text(
                          '\$ ${product.newPrice.toStringAsFixed(2)}',
                          style: GoogleFonts.openSans(
                            color: AppColors.textColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  Icons.star,
                  color: Color(0xFFfec01e),
                  size: 20,
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
          ],
        ),
      ),
    );
  }
}
