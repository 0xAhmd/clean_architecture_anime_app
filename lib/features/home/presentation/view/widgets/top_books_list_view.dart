import '../../../domain/entities/book_entity.dart';
import 'top_books.dart';
import 'package:flutter/material.dart';

class TopBooksListView extends StatelessWidget {
  const TopBooksListView({super.key, required this.books});

  final List<BookEntity> books;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ListView.builder(
        physics:
            const NeverScrollableScrollPhysics(), // disable ListView scrolling
        shrinkWrap: true, // Let it take only the space it needs
        itemCount: books.length,
        itemBuilder: (context, index) {
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
