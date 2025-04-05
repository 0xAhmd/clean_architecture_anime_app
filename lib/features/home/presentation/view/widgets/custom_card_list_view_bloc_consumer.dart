import '../../../domain/entities/book_entity.dart';
import '../../manager/cubit/featured_books_cubit.dart';
import 'custom_card_list_view.dart';
import 'featured_books_list_view_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCardListViewBlocConsumer extends StatefulWidget {
  const CustomCardListViewBlocConsumer({
    super.key,
  });

  @override
  State<CustomCardListViewBlocConsumer> createState() =>
      _CustomCardListViewBlocConsumerState();
}

class _CustomCardListViewBlocConsumerState
    extends State<CustomCardListViewBlocConsumer> {
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener: (context, state) {
        if (state is FeaturedBooksSuccess) {
          books.addAll(state.books);
        }
        if (state is FeaturedBooksPaginationFailure) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              duration: const Duration(seconds: 2),
              content: Text(
                state.errorMessage,
                style: const TextStyle(color: Colors.white),
              )));
        }
      },
      builder: (context, state) {
        //
        if (state is FeaturedBooksSuccess ||
            state is FeaturedBooksLoadingPagination ||
            state is FeaturedBooksPaginationFailure) {
          return CustomCardListView(
            books: books,
          );
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errorMessage);
        } else {
          return const FeaturedBooksListViewLoadingIndicator();
        }
      },
    );
  }
}
