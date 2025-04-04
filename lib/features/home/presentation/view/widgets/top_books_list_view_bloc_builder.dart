import 'package:bookly_app/features/home/presentation/manager/cubit/fetch_newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/top_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopBooksListViewBlocBuilder extends StatelessWidget {
  const TopBooksListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNewestBooksCubit, FetchNewestBooksState>(
      builder: (context, state) {
        if (state is FetchNewestBooksSuccess) {
          return TopBooksListView(
            books: state.books.reversed.toList(),);
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
