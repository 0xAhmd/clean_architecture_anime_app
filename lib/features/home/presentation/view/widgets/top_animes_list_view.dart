import 'package:bookly_app/features/home/presentation/view/widgets/top_animes.dart';
import 'package:flutter/material.dart';

class TopAnimesListView extends StatelessWidget {
  const TopAnimesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TopAnimes(),
          );
        },
      ),
    );
  }
}
