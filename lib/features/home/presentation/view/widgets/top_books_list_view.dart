import 'package:flutter/material.dart';

import 'top_books.dart';

class TopBooksListView extends StatelessWidget {
  const TopBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Padding(
            padding:  EdgeInsets.symmetric(vertical: 10.0),
            child: TopBooks(),
          );
        },
      ),
    );
  }
}
