import 'package:test_bento/src/shared/constants/app_assets.dart';

enum CategoryEnum {
  vegan(
    'Vegan',
    AppAssets.vegan,
  ),
  meat(
    'Meat',
    AppAssets.meat,
  ),
  fuits(
    'Fruits',
    AppAssets.fruits,
  ),
  milk(
    'Milk',
    AppAssets.milk,
  ),
  fish(
    'Fish',
    AppAssets.fish,
  ),
  cereal(
    'Cereals',
    AppAssets.cereal,
  );

  final String label;
  final String url;

  const CategoryEnum(
    this.label,
    this.url,
  );
}
