import 'package:bookly_app/features/home/presentation/view/widgets/actions_button.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/anime_rates.dart';

import 'package:bookly_app/features/home/presentation/view/widgets/custom_details_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
import '../recommended_animes_card.dart';
import '../recommended_animes_list_View.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDetailsViewAppBar(),
        const SizedBox(height: 28),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.27),
          child: RecommendedCards(),
        ),
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
        const SizedBox(height: 68),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.texyStyle16.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        RecommendedAnimesSection(),
      ],
    );
  }
}
