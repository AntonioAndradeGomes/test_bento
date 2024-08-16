import 'package:test_bento/src/shared/constants/app_assets.dart';

class PromotionModel {
  final String label1;
  final String label2;
  final String label3;
  final String urlImage;

  PromotionModel({
    required this.label1,
    required this.label2,
    required this.label3,
    required this.urlImage,
  });
}

final promotions = [
  PromotionModel(
    label1: 'Top deal!',
    label2: 'FRESH AVOCADO',
    label3: 'UP TO 15% OFF',
    urlImage: AppAssets.avocado,
  ),
  PromotionModel(
    label1: 'Great offer!',
    label2: 'FRESH LEMON',
    label3: 'UP TO 10% OFF',
    urlImage: AppAssets.lemon,
  ),
  PromotionModel(
    label1: 'So today!',
    label2: 'ORANGE',
    label3: 'UP TO 5% OFF',
    urlImage: AppAssets.orange,
  ),
];
