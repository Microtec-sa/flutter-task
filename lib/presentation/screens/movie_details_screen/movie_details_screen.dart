import 'package:flutter/material.dart';

import 'components/details_area.dart';
import 'components/flexible_appbar.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final imageHeight = MediaQuery.of(context).size.height * 0.4;
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            stretch: true,
            floating: false,
            pinned: true,
            expandedHeight: imageHeight,
            flexibleSpace: const FlexibleAppBar(),
          ),
          const SliverToBoxAdapter(
            child: DetailsArea(),
          ),
        ],
      ),
    );
  }
}
