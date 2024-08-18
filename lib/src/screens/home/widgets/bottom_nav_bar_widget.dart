import 'package:flutter/material.dart';
import 'package:test_bento/src/screens/home/widgets/nav_bar_icon_widget.dart';
import 'package:test_bento/src/shared/constants/app_colors.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BottomAppBar(
      //color: Colors.yellow,
      elevation: 0,
      height: 60,
      padding: EdgeInsets.zero,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(
              size.width,
              56,
            ),
            painter: BottomNavCurvePainter(
              backgroundColor: Colors.white,
              elevation: 0,
            ),
          ),
          Container(
            color: Colors.white,
            height: 58,
            width: size.width,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NavBarIconWidget(
                  label: 'Home',
                  icon: Icons.home,
                  isActive: true,
                ),
                NavBarIconWidget(
                  label: 'Delas',
                  icon: Icons.bookmark,
                  isActive: false,
                ),
                SizedBox(
                  width: 30,
                ),
                NavBarIconWidget(
                  label: 'Cart',
                  icon: Icons.shopping_bag,
                  isActive: false,
                ),
                NavBarIconWidget(
                  label: 'Account',
                  icon: Icons.person,
                  isActive: false,
                ),
              ],
            ),
          ),
          Center(
            heightFactor: 0.5,
            child: FloatingActionButton(
              elevation: 0,
              focusElevation: 0,
              hoverElevation: 0,
              highlightElevation: 0,
              shape: const StadiumBorder(),
              backgroundColor: AppColors.buttonColor,
              child: Icon(
                Icons.add_business,
                color: AppColors.iconFabColor,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavCurvePainter extends CustomPainter {
  final Color backgroundColor;
  final Color shadowColor;
  final double elevation;
  final double insetRadius;

  BottomNavCurvePainter({
    super.repaint,
    this.backgroundColor = Colors.white,
    this.shadowColor = Colors.grey,
    this.elevation = 100,
    this.insetRadius = 38,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
    Path path = Path();

    double insetCurveBeginnningX = size.width / 2 - insetRadius;
    double insetCurveEndX = size.width / 2 + insetRadius;

    path.lineTo(
      insetCurveBeginnningX,
      0,
    );
    path.arcToPoint(
      Offset(
        insetCurveEndX,
        0,
      ),
      radius: const Radius.circular(41),
      clockwise: true,
    );

    path.lineTo(
      size.width,
      0,
    );

    path.lineTo(
      size.width,
      size.height + 56,
    );
    path.lineTo(
      0,
      size.height + 56,
    ); //+56 here extends the navbar below app bar to include extra space on some screens (iphone 11)
    canvas.drawShadow(
      path,
      shadowColor,
      elevation,
      true,
    );
    canvas.drawPath(
      path,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
