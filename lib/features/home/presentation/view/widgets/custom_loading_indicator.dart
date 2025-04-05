import 'package:flutter/material.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Simulated image box
        SizedBox(
          height: 125,
          child: AspectRatio(
            aspectRatio: 2.6 / 4,
            child: shimmerBox(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        const SizedBox(width: 30),

        // Simulated text content
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              shimmerBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: 20,
              ),
              const SizedBox(height: 6),
              shimmerBox(width: 100, height: 14),
              const SizedBox(height: 6),
              Row(
                children: [
                  shimmerBox(width: 50, height: 20),
                  const Spacer(),
                  Row(
                    children: List.generate(
                        5,
                        (_) => Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: shimmerBox(
                                  width: 12,
                                  height: 12,
                                  borderRadius: BorderRadius.circular(4)),
                            )),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget shimmerBox({double height = 16, double width = double.infinity, BorderRadius? borderRadius}) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: borderRadius ?? BorderRadius.circular(8),
      ),
    );
  }
}
