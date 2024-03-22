import 'package:adaptaive_layout_practice/views/widgets/custom_sliver_grid.dart';
import 'package:adaptaive_layout_practice/views/widgets/custom_sliver_list_view.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        /// A SliverToBoxAdapter that adds a fixed height box to the scroll view.
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),

        /// A CustomSliverGride, which is a SliverMultiBoxAdaptorWidget.
        CustomSliverGride(),

        /// A CustomSliverListView, which is a SliverList that builds list items.
        CustomSliverListView(),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
      ],
    );
  }
}
