import '../../../../../core/utils/styles.dart';
import 'package:flutter/material.dart';

class ActionsButton extends StatelessWidget {
  const ActionsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 32),
      child:  Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '999 €',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              backgroundColor: Color(0xFFEF8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.borderRadius,
      required this.backgroundColor,
      required this.textColor});

  final String text;
  final BorderRadius? borderRadius;
  final Color backgroundColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(10),
              ),
              backgroundColor: backgroundColor),
          onPressed: () {},
          child: Text(
            text,
            style: Styles.texyStyle18
                .copyWith(color: textColor, fontWeight: FontWeight.w900),
          ),
        ));
  }
}
