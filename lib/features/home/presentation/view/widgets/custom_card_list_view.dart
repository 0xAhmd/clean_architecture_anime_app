import 'custom_card.dart';
import 'package:flutter/material.dart';

class CustomCardListView extends StatelessWidget {
  const CustomCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: CustomCard(),
          );
        },
      ),
    );
  }
}
