import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_bento/src/models/promotion_model.dart';
import 'package:test_bento/src/shared/constants/app_colors.dart';

class CarouselPromotionsWidget extends StatelessWidget {
  final PromotionModel promotion;
  const CarouselPromotionsWidget({
    super.key,
    required this.promotion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFFf3f5de),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                promotion.label1,
                style: GoogleFonts.openSans(
                  color: AppColors.buttonColor,
                  fontSize: 15,
                ),
              ),
              Text(
                promotion.label2,
                style: GoogleFonts.openSans(
                  color: AppColors.buttonColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                promotion.label3,
                style: GoogleFonts.openSans(
                  color: AppColors.buttonColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 45,
                child: FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.buttonColor,
                    padding: const EdgeInsets.symmetric(
                      //vertical: 15,
                      horizontal: 20,
                    ),
                  ),
                  child: Text(
                    'Shop Now',
                    style: GoogleFonts.openSans(
                      color: AppColors.containerColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Image.asset(
            promotion.urlImage,
          ),
        ],
      ),
    );
  }
}
