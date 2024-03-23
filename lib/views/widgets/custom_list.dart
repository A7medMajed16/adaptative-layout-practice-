import 'package:adaptaive_layout_practice/views/widgets/custom_sliver_grid_item.dart';
import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          itemCount: 50,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const AspectRatio(
            aspectRatio: 1,
            child: Padding(
              padding: EdgeInsets.only(right: 16),
              child: CustomSliverGrideItem(),
            ),
          ),
        ),
      ),
    );
  }
}
