import '../../../../../core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
    const     Padding(
          padding:  EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            radius: 17,
            backgroundImage: AssetImage(AssetsData.logo2),
          ),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchView);
            },
            icon: const Icon(FontAwesomeIcons.magnifyingGlass)),
      ],
    );
  }
}
