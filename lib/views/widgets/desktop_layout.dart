import 'package:adaptaive_layout_practice/views/widgets/custom_drawer.dart';
import 'package:adaptaive_layout_practice/views/widgets/desktop_custom_widget.dart';

import 'package:adaptaive_layout_practice/views/widgets/tablet_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DeskTopLayout extends StatelessWidget {
  const DeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 2,
          child: TabletLayout(),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: DesktopCustomWidget(),
          ),
        ),
      ],
    );
  }
}
