import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_bento/src/shared/constants/app_colors.dart';

class NavBarIconWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isActive;
  const NavBarIconWidget({
    super.key,
    required this.label,
    required this.icon,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 25,
            color: isActive
                ? AppColors.activeTabColor
                : AppColors.inactiveTabColor.withAlpha(150),
          ),
          Text(
            label,
            style: GoogleFonts.openSans(
              color: isActive
                  ? AppColors.activeTabColor
                  : AppColors.inactiveTabColor,
              fontSize: 12,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
