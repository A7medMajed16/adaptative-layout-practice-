import 'package:adaptaive_layout_practice/get_responsive_font_size.dart';
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
        size: getResponsiveFontSize(context, baseFontSize: 30),
        color: Colors.grey[600],
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          drawerItemMode.title,
          style: TextStyle(
            color: Colors.grey[600],
            letterSpacing: 4,
            fontSize: getResponsiveFontSize(context, baseFontSize: 18),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
