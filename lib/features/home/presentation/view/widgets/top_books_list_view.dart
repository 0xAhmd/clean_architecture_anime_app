import 'top_books.dart';
import 'package:flutter/material.dart';

class TopBooksListView extends StatelessWidget {
  const TopBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TopBooks(),
          );
        },
      ),
    );
  }
}
