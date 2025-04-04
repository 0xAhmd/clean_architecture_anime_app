import 'package:bookly_app/features/home/presentation/view/widgets/recommended_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
import '../custom_details_app_bar.dart';
import '../details_section.dart';
import '../recommended_books_card.dart';

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
              const CustomDetailsViewAppBar(),
              const SizedBox(height: 4),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.27),
                child: const RecommendedCards(),
              ),
              const DetailsSection(),
              const SizedBox(height: 4),
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
              const SizedBox(height: 12),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: RecommendedBookssSection(
                  books: [],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
