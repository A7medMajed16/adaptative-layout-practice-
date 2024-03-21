import 'package:flutter/material.dart';

/// A custom SliverListView item widget.
/// This widget creates a container with a fixed height and a grey background color.
/// The container has a border radius of 16 to make it look more appealing.
class CustomSliverListViewItem extends StatelessWidget {
  /// Constructor for the CustomSliverListViewItem widget.
  const CustomSliverListViewItem({super.key});

  /// Builds the widget tree for the CustomSliverListViewItem widget.
  ///
  /// This method returns a container with a fixed height and grey background color.
  /// The container has a border radius of 16 to make it look more appealing.
  @override
  Widget build(BuildContext context) {
    return Container(
      /// The height of the container is set to 100.
      height: 100,

      /// The container has a grey background color.
      decoration: BoxDecoration(
        /// The color of the container is set to grey with a shade of 700.
        color: Colors.grey[700],

        /// The container has a border radius of 16.
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
