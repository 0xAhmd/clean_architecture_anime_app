import 'recommended_animes_card.dart';
import 'package:flutter/material.dart';

class RecommendedAnimesSection extends StatelessWidget {
  const RecommendedAnimesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
            ),
            child: RecommendedCards(),
          );
        },
      ),
    );
  }
}
