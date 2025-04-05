import '../../../../../core/widgets/fading_animation.dart';
import 'custom_book_image_loading.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListViewLoadingIndicator extends StatelessWidget {
  const FeaturedBooksListViewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return FadingAnimation(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: ListView.builder(
          
          itemCount: 15,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child:  CustomBookImageLoadingIndicator(),
            );
          },
        ),
      ),
    );
  }
}