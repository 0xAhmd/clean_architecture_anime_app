import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'anime_rates.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopAnimes extends StatelessWidget {
  const TopAnimes({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kDetailsView);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 125,
            child: AspectRatio(
              aspectRatio: 2.6 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(AssetsData.testImage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text('Chainsaw Man',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.texyStyle20),
                ),
                const SizedBox(height: 3),
                Text(
                  'Tatsuki Fujimoto',
                  style: Styles.texyStyle14,
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text('44 €', style: Styles.texyStyle20),
                    Spacer(),
                    AnimeRates()
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
