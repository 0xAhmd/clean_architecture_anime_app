// ignore: file_names
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/recommended_books_card.dart';
import 'package:flutter/material.dart';

class RecommendedBookssSection extends StatelessWidget {
  const RecommendedBookssSection({super.key, required  this.books});
  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        itemCount: books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 6,
            ),
            child: RecommendedCards(),
          );
        },
      ),
    );
  }
}
