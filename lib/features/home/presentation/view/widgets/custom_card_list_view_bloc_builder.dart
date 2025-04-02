import 'package:bookly_app/features/home/presentation/manager/cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_card_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCardListViewBlocBuilder extends StatelessWidget {
  const CustomCardListViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return const CustomCardListView();
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errorMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
