import 'package:flutter/material.dart';

class CustomSliverGrideItem extends StatelessWidget {
  const CustomSliverGrideItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[700],
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
