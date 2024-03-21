import 'package:adaptaive_layout_practice/views/widgets/custom_sliver_grid_item.dart';
import 'package:flutter/material.dart';

class CustomSliverGride extends StatelessWidget {
  const CustomSliverGride({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: 4,
      itemBuilder: (context, index) => const CustomSliverGrideItem(),
    );
  }
}
