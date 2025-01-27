import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(AssetsData.testImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: const Color.fromARGB(77, 255, 255, 255),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.play_arrow),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
