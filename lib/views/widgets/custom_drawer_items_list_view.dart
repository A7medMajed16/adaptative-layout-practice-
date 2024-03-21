import 'package:adaptaive_layout_practice/models/drawer_item_model.dart';
import 'package:adaptaive_layout_practice/views/widgets/custom_drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawerItemsListView extends StatelessWidget {
  const CustomDrawerItemsListView({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) =>
          CustomDrawerItem(drawerItemMode: items[index]),
    );
  }
}
