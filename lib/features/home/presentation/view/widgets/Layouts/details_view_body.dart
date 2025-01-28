import '../custom_details_app_bar.dart';
import '../details_section.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
import '../recommended_animes_card.dart';
import '../recommended_animes_list_View.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomDetailsViewAppBar(),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.27),
                child: RecommendedCards(),
              ),
              DetailsSection(),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Text(
                      'You can also like',
                      style: Styles.texyStyle16.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: RecommendedAnimesSection(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
