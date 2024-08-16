import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test_bento/src/screens/home/widgets/carousel_container_widget.dart';
import 'package:test_bento/src/shared/app_assets.dart';
import 'package:test_bento/src/shared/app_colors.dart';

class CarouselPromotionsWidget extends StatefulWidget {
  const CarouselPromotionsWidget({super.key});

  @override
  State<CarouselPromotionsWidget> createState() =>
      _CarouselPromotionsWidgetState();
}

class _CarouselPromotionsWidgetState extends State<CarouselPromotionsWidget> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      child: Column(
        children: [
          CarouselSlider(
            items: const [
              CarouselContainerWidget(
                text1: 'Top deal!',
                text2: 'FRESH AVOCADO',
                text3: 'UP TO 15% OFF',
                asset: AppAssets.avocado,
              ),
              CarouselContainerWidget(
                text1: 'Great offer!',
                text2: 'FRESH LEMON',
                text3: 'UP TO 10% OFF',
                asset: AppAssets.lemon,
              ),
              CarouselContainerWidget(
                text1: 'So today!',
                text2: 'ORANGE',
                text3: 'UP TO 5% OFF',
                asset: AppAssets.orange,
              ),
            ],
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(
                seconds: 5,
              ),
              reverse: false,
              viewportFraction: 1,
              onPageChanged: (index, _) {
                setState(() {
                  page = index;
                });
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => AnimatedContainer(
                duration: const Duration(
                  milliseconds: 300,
                ),
                width: index != page ? 6 : 30,
                height: 6,
                margin: const EdgeInsets.only(
                  right: 3,
                ),
                decoration: BoxDecoration(
                  color: index != page ? Colors.grey : AppColors.containerColor,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
