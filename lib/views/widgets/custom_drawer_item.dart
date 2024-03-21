import 'package:adaptaive_layout_practice/models/drawer_item_model.dart';
import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerItemMode});

  final DrawerItemModel drawerItemMode;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        drawerItemMode.icon,
        size: 40,
        color: Colors.grey[600],
      ),
      title: Text(
        drawerItemMode.title,
        style: TextStyle(
          color: Colors.grey[600],
          letterSpacing: 4,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
