import 'package:adaptaive_layout_practice/models/drawer_item_model.dart';
import 'package:adaptaive_layout_practice/views/widgets/custom_drawer_items_list_view.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerItemModel> items = [
    DrawerItemModel(
      icon: Icons.home_rounded,
      title: 'DASHBOARD',
    ),
    DrawerItemModel(
      icon: Icons.settings_rounded,
      title: 'SETTINGS',
    ),
    DrawerItemModel(
      icon: Icons.error_rounded,
      title: 'ABOUT',
    ),
    DrawerItemModel(
      icon: Icons.logout_rounded,
      title: 'LOGOUT',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Color(0xffDBDBDB),
      width: double.infinity,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.favorite_rounded,
              color: Colors.black,
              size: 100,
            ),
          ),
          CustomDrawerItemsListView(items: items),
        ],
      ),
    );
  }
}
