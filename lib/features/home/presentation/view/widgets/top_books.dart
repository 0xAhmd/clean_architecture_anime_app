import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/styles.dart';
import 'books_rates.dart';

class TopBooks extends StatelessWidget {
  const TopBooks({
    super.key,
    required this.title,
    required this.image,
    required this.author, required this.rate,
  });
  final String title;
  final String image;
  final String author;
  final num rate;
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: image,
                  ),
                )),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.texyStyle20),
                ),
                const SizedBox(height: 3),
                Text(
                  author,
                  style: Styles.texyStyle14,
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text("free", style: Styles.texyStyle20),
                    const Spacer(),
                    BookRates(
                      rating: rate,
                    )
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
