import 'package:adaptaive_layout_practice/views/widgets/custom_sliver_grid_item.dart';
import 'package:adaptaive_layout_practice/views/widgets/custom_sliver_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DesktopCustomWidget extends StatelessWidget {
  const DesktopCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: CustomSliverGrideItem(),
        ),
        SizedBox(height: 16),
        Expanded(
          flex: 1,
          child: CustomSliverListViewItem(),
        ),
      ],
    );
  }
}
