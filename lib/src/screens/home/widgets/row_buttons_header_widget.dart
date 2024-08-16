import 'package:flutter/material.dart';
import 'package:test_bento/src/screens/home/widgets/button_header_widget.dart';
import 'package:test_bento/src/shared/app_assets.dart';

class RowButtonsHeaderWidget extends StatelessWidget {
  const RowButtonsHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Row(
        children: [
          ButtonHeaderWidget(
            label: 'ORDER\nAGAIN',
            urlImage: AppAssets.orderAgain,
          ),
          SizedBox(
            width: 15,
          ),
          ButtonHeaderWidget(
            label: 'LOCAL\nSHOP',
            urlImage: AppAssets.localShop,
          ),
        ],
      ),
    );
  }
}
