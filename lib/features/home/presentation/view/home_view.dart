import 'package:flutter/material.dart';

import 'widgets/Layouts/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
