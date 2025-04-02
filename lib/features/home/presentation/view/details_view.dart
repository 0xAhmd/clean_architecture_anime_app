import 'package:flutter/material.dart';

import 'widgets/Layouts/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: DetailsViewBody()),
    );
  }
}
