import 'package:bookly_app/features/home/presentation/view/widgets/custom_card_list_view_bloc_consumer.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/top_books_list_view_bloc_builder.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
import '../custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppBar(),
                  const CustomCardListViewBlocConsumer(),
                  const SizedBox(height: 50),
                  Text('Top Books',
                      style: Styles.texyStyle20
                          .copyWith(fontWeight: FontWeight.w600)),
                  const SizedBox(height: 8),
                ],
              ),
            ),
            const TopBooksListViewBlocBuilder(),
          ],
        ));
  }
}
