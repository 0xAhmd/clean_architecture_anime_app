import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRates extends StatelessWidget {
  const BookRates(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rating,
      });

  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  // final num price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          const Icon(
            FontAwesomeIcons.solidStar,
            color: Colors.amberAccent,
            size: 18,
          ),
          const SizedBox(width: 6.3),
          Text(rating.toString(), style: Styles.texyStyle16),
          const SizedBox(width: 5),
          // const Text(' (free)', style: Styles.texyStyle16),
        ],
      ),
    );
  }
}
