import '../../../../../core/widgets/fading_animation.dart';
import 'custom_loading_indicator.dart';
import 'package:flutter/material.dart';

class FetchNewestBooksLoadingIndicator extends StatelessWidget {
  const FetchNewestBooksLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: FadingAnimation(
        child: ListView.builder(
          physics:
              const NeverScrollableScrollPhysics(), // disable ListView scrolling
          shrinkWrap: true, // Let it take only the space it needs
          itemCount: 20,
          itemBuilder: (context, index) {
            return const Padding(
              padding:  EdgeInsets.symmetric(vertical: 10.0),
              child: CustomLoadingIndicator()
            );
          },
        ),
      ),
    );
  }
}