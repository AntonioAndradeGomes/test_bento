import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_bento/src/shared/app_assets.dart';
import 'package:test_bento/src/shared/app_colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Padding(
      padding: EdgeInsets.only(
        top: statusBarHeight + 5,
        left: 15,
        right: 15,
        bottom: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Delivery',
                style: GoogleFonts.openSans(
                  color: AppColors.textColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Bacangan, Sambit',
                    style: GoogleFonts.openSans(
                      color: AppColors.textColor2,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: AppColors.iconColor,
                  ),
                ],
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: AppColors.avatarColor,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Image.asset(
                AppAssets.avatar,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
