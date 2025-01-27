import 'package:bookly_app/features/home/presentation/view/widgets/custom_card.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_details_app_bar.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDetailsViewAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.27),
          child: CustomCard(),
        ),
      ],
    );
  }
}
