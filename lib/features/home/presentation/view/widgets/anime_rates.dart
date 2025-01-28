import '../../../../../core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimeRates extends StatelessWidget {
  const AnimeRates({super.key,  this.mainAxisAlignment = MainAxisAlignment.start});


final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: const [
          Icon(
            FontAwesomeIcons.solidStar,
            color: Colors.amberAccent,
            size: 18,
          ),
          SizedBox(width: 6.3),
          Text('4.5', style: Styles.texyStyle16),
          SizedBox(width: 5),
          Text(' (200)', style: Styles.texyStyle16),
        ],
      ),
    );
  }
}
