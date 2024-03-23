import 'package:adaptaive_layout_practice/views/widgets/desktop_layout.dart';
import 'package:adaptaive_layout_practice/views/widgets/mobile_layout.dart';
import 'package:adaptaive_layout_practice/views/widgets/tablet_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LayoutBuilder(builder: (context, constraint) {
        if (constraint.maxWidth < 600) {
          return const MobileLayout();
        } else if (constraint.maxWidth < 900) {
          return const TabletLayout();
        } else {
          return const DeskTopLayout();
        }
      }),
    );
  }
}
