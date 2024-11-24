import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../color/colors.dart';


class Utils {
  static void mySnackBar({
    String title = "",
    String msg = "",
    double? maxWidth,
    Duration duration = const Duration(milliseconds: 1100),
  }) {

    // if(msg == ''){
    //   Get.rawSnackbar(
    //    message: title,
    //    maxWidth: maxWidth,
    //     animationDuration: const Duration(milliseconds: 800),
    //     duration: duration,
    //     borderWidth: 3,
    //     boxShadows: [
    //       const BoxShadow(
    //         color: colors.borderColorLight,
    //         blurRadius: 3,
    //         spreadRadius: 1,
    //       ),
    //     ],
    //     backgroundColor: colors.primary,
    //     snackPosition: SnackPosition.TOP
    //   );
    //   return;
    // }
    Get.snackbar(
      title,
      msg,
      maxWidth: maxWidth,
      animationDuration: const Duration(milliseconds: 800),
      duration: duration,
      borderColor: NatureColor.primary,
      borderWidth: 1,
      colorText: NatureColor.blackColor,
      backgroundColor: NatureColor.primary2,
      boxShadows: [
        const BoxShadow(
          color: NatureColor.primary2,
          blurRadius: 3,
          spreadRadius: 1,
        ),
      ],
      titleText:  title == ""?const SizedBox(): null,
      messageText: msg == ''?const SizedBox(): null,
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      // margin: const EdgeInsets.only(top: 16),

    );

  }
}
