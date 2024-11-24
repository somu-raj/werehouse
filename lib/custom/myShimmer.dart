import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../color/colors.dart';


Widget myShimmer({double height = 80}) {

  return Shimmer.fromColors(
    baseColor: NatureColor.primary.withOpacity(0.4),
    highlightColor: NatureColor.primary.withOpacity(0.2),
    enabled: true,
    child: ListView.builder(
      padding: const EdgeInsets.only(top: 10),
      itemCount: 10,
      itemBuilder: (context, index) => Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            height: height,
            decoration: BoxDecoration(
                color: NatureColor.primary, borderRadius: BorderRadius.circular(30)),
          ),
        ],
      ),
    ),
  );
}
