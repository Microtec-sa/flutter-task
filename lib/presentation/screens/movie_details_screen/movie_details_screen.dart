import 'dart:math';

import 'package:flutter/material.dart';

import 'components/details_area.dart';
import 'components/flexible_appbar.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const maxImageHeight = 350.0;
    const minHorizontalPadding = 40.0;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: constraints.smallest.width < 600
                  ? 0
                  : max(minHorizontalPadding, constraints.maxWidth * 0.05),
            ),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverAppBar(
                  stretch: true,
                  floating: false,
                  pinned: true,
                  expandedHeight:
                      max(maxImageHeight, constraints.maxHeight * 0.4),
                  flexibleSpace: const FlexibleAppBar(),
                ),
                const SliverToBoxAdapter(
                  child: DetailsArea(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
