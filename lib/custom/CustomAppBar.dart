import 'package:flutter/material.dart';

import '../color/colors.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? icon;
  final String? imageAsset;

  const CustomAppBar({
    super.key,
    required this.title,
    this.icon,
    this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false, // Prevent default back button
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between elements
        children: [

          // Icon or image on the left
          icon != null
              ? Icon(icon, color: NatureColor.colorFillBOx)
              : imageAsset != null
              ? Image.asset(
            imageAsset!,
            width: 24,
            height: 24,
            color:  NatureColor.colorFillBOx,
          )
              : SizedBox(width: 24), // Empty space if no icon/image provided

          // Title on the right
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: NatureColor.colorFillBOx,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
