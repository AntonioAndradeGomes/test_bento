import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:test_bento/src/shared/constants/app_colors.dart';

class CarouselWidget extends StatefulWidget {
  final bool autoPlay;
  final int secondsAutoPlayInterval;
  final List<Widget>? items;
  final double? heightCarousel;
  final EdgeInsets? padding;

  const CarouselWidget({
    super.key,
    this.autoPlay = true,
    this.secondsAutoPlayInterval = 5,
    this.items,
    this.heightCarousel = 160,
    this.padding,
  });

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ??
          const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
      child: Column(
        children: [
          CarouselSlider(
            items: widget.items,
            options: CarouselOptions(
              autoPlay: widget.autoPlay,
              autoPlayInterval: Duration(
                seconds: widget.secondsAutoPlayInterval,
              ),
              reverse: false,
              viewportFraction: 1,
              height: widget.heightCarousel,
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
              widget.items?.length ?? 0,
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
