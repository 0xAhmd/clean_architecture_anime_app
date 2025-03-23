import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class RecommendedCards extends StatelessWidget {
  const RecommendedCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: AspectRatio(
            aspectRatio: 2.8 / 4.1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(AssetsData.testImage),
                  fit: BoxFit.fill,
                ),
              ),
            )));
  }
}
