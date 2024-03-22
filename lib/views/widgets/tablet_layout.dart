import 'package:adaptaive_layout_practice/views/widgets/custom_list.dart';
import 'package:adaptaive_layout_practice/views/widgets/custom_sliver_list_view.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

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
        CustomList(),

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
