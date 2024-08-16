import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_bento/src/shared/app_colors.dart';

class CarouselContainerWidget extends StatelessWidget {
  final String? text1;
  final String? text2;
  final String? text3;
  final String asset;
  const CarouselContainerWidget({
    super.key,
    this.text1 = 'Top deal!',
    this.text2 = '',
    this.text3 = 'UP TO 15% OFF',
    required this.asset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFf3f5de),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1!,
                style: GoogleFonts.openSans(
                  color: AppColors.buttonColor,
                  fontSize: 15,
                ),
              ),
              text2 != null
                  ? Text(
                      text2!,
                      style: GoogleFonts.openSans(
                        color: AppColors.buttonColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : const SizedBox(),
              Text(
                text3!,
                style: GoogleFonts.openSans(
                  color: AppColors.buttonColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.buttonColor,
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
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
            ],
          ),
          Image.asset(
            asset,
            height: 150,
            //width: 100,
          ),
        ],
      ),
    );
  }
}
