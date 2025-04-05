import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/manager/cubit/fetch_newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/top_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopBooksListViewBlocBuilder extends StatefulWidget {
  const TopBooksListViewBlocBuilder({super.key});

  @override
  State<TopBooksListViewBlocBuilder> createState() =>
      _TopBooksListViewBlocBuilderState();
}

class _TopBooksListViewBlocBuilderState
    extends State<TopBooksListViewBlocBuilder> {
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetchNewestBooksCubit, FetchNewestBooksState>(
      listener: (context, state) {
        if (state is FetchNewestBooksSuccess) {
          books.addAll(state.books);
        }
        if (state is FetchNewestBooksFailurePagintation) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              duration: const Duration(seconds: 2),
              content: Text(
                state.errorMessage,
                style: const TextStyle(color: Colors.white),
              )));
        }
      },
      builder: (context, state) {
        if (state is FetchNewestBooksSuccess ||
            state is FetchNewestBooksLoadingPagintation ||
            state is FetchNewestBooksFailurePagintation) {
          return TopBooksListView(books: books);
        } else if (state is FetchNewestBooksFailure) {
          return SliverToBoxAdapter(
            child: Center(child: Text(state.errMessage)),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
