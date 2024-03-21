import 'package:adaptaive_layout_practice/views/widgets/custom_sliver_list_view_item.dart';
import 'package:flutter/material.dart';

/// A custom SliverList widget that builds a list of 10 items.
/// Each item is a padded CustomSliverListViewItem widget.
class CustomSliverListView extends StatelessWidget {
  /// Constructor for CustomSliverListView.
  const CustomSliverListView({super.key});

  /// Builds the SliverList widget with 10 items.
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      /// Specifies the number of items in the list.
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(top: 16),
        child: CustomSliverListViewItem(),
      ),
    );
  }
}
