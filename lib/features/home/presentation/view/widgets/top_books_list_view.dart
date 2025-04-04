import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

import 'top_books.dart';

class TopBooksListView extends StatelessWidget {
  const TopBooksListView({super.key, required this.books});
  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      
      delegate: SliverChildBuilderDelegate(
childCount: books.length,
        (context, index) {

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TopBooks(
              rate: books[index].rate ?? 0,
              image: books[index].image ?? "",
              author: books[index].author ?? "",
              title: books[index].title,
            ),
          );
        },
      ),
    );
  }
}
