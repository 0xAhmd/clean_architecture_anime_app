import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_card_list_view.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/top_animes_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 30,
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  CustomCardListView(),
                  const SizedBox(height: 50),
                  Text('Top Animes',
                      style: Styles.texyStyle20
                          .copyWith(fontWeight: FontWeight.w600)),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            TopAnimesListView(),
          ],
        ));
  }
}
