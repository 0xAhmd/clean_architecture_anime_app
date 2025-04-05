import '../../../manager/cubit/fetch_newest_books_cubit.dart';
import '../custom_card_list_view_bloc_consumer.dart';
import '../top_books_list_view_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/styles.dart';
import '../custom_app_bar.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  late ScrollController _scrollController;
  var nextPage = 1;
  var isLoading = false;
   @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() async {
    var currentPosition = _scrollController.position.pixels;
    var maxScrollLength = _scrollController.position.maxScrollExtent;
    if (currentPosition >= 0.7 * maxScrollLength) {
      if (!isLoading) {
        isLoading = true;
      await  BlocProvider.of<FetchNewestBooksCubit>(context).fetchNewestBooks(
          pageNumber: nextPage++,
        );
        isLoading = false;
     
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppBar(),
                  const CustomCardListViewBlocConsumer(),
                  const SizedBox(height: 50),
                  Text('Top Books',
                      style: Styles.texyStyle20
                          .copyWith(fontWeight: FontWeight.w600)),
                  const SizedBox(height: 8),
                ],
              ),
            ),
            const TopBooksListViewBlocBuilder(),
          ],
        ));
  }
}
