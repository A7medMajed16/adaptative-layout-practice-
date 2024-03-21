import 'package:adaptaive_layout_practice/views/widgets/custom_sliver_grid.dart';
import 'package:adaptaive_layout_practice/views/widgets/custom_sliver_list_view.dart';
import 'package:flutter/material.dart';

/// This class, HomeViewBody, represents the body of the HomeView.
/// It is a StatelessWidget, meaning its state does not change.
class HomeViewBody extends StatelessWidget {
  /// The constructor for HomeViewBody.
  const HomeViewBody({super.key});

  /// The build method returns a Padding widget that contains a CustomScrollView.
  /// The Padding widget has a symmetric horizontal padding of 16.
  /// The CustomScrollView has a BouncingScrollPhysics scrolling behavior.
  /// The slivers property of the CustomScrollView contains three slivers:
  /// 1. A SliverToBoxAdapter that contains a SizedBox with a height of 20.
  /// 2. A CustomSliverGride.
  /// 3. A CustomSliverListView.
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
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
        ],
      ),
    );
  }
}
