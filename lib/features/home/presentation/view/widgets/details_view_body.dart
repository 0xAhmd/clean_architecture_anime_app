import 'package:bookly_app/features/home/presentation/view/widgets/custom_details_app_bar.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomDetailsViewAppBar(),
      ],
    );
  }
}
