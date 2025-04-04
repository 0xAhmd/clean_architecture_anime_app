import 'package:flutter/material.dart';

class FadingAnimation extends StatefulWidget {
  const FadingAnimation({super.key, required this.child});

  final Widget child;
  @override
  State<FadingAnimation> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FadingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this);
    _animation = Tween<double>(begin: .2, end: .8).animate(_controller);
    _controller.addListener(() {
      setState(() {});
    });
    _controller.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: _animation.value,
      child: widget.child,
    );
  }
}
