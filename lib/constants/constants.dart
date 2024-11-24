import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

/// get screen size
class Constants{

  static  Size screen =  Size(Get.width, Get.height);
  // static  Size screen = const Size(360.0, 730.0);
  static double largeSize = max(screen.height, screen.width);
  // static getScreenSize(context){
  //   // debugPrint("fgggggggg");
  //   // screen = MediaQuery.sizeOf(context);
  // }

  static double getResponsiveFontSize(double size) {
    double smallerSize = min(screen.height, screen.width);
    return size * smallerSize/ 100;
  }


}