import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image(
              image: AssetImage(AssetsData.logo2),
              height: 34,
            ),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {}, icon: Icon(FontAwesomeIcons.magnifyingGlass)),
        ],
      ),
    );
  }
}
