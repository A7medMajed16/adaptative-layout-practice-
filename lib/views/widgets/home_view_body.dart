import 'package:adaptaive_layout_practice/views/widgets/adaptaive_layout.dart';
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
      child: AdaptaiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        deskTopLayout: (context) => const DeskTopLayout(),
      ),
    );
  }
}
