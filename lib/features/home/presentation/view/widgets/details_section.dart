import '../../../../../core/utils/styles.dart';
import 'actions_button.dart';
import 'anime_rates.dart';
import 'package:flutter/material.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 32),
        Text(
          'ChainSaw Man',
          style: Styles.texyStyle30.copyWith(fontWeight: FontWeight.w600),
        ),
        Opacity(
          opacity: 0.7,
          child: Text('Tatsuki Fujimoto',
              style: Styles.texyStyle18.copyWith(
                fontStyle: FontStyle.italic,
              )),
        ),
        const SizedBox(height: 12),
        AnimeRates(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 32),
        ActionsButton(),
        const SizedBox(height: 38),
      ],
    );
  }
}
