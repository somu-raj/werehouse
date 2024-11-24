/*

import 'package:flutter/material.dart';
import 'package:nature_nook_app/constants/constants.dart';
import 'package:nature_nook_app/constants/responsive.dart';
import 'package:nature_nook_app/custom/CustomText.dart';
import '../color/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final double? height;
  final double? width;
  final double borderRadius;
  final String? fontFamily;
  final double? fontSize;
  final double? letterSpacing;
  final FontWeight? fontWeight;

 const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = NatureColor.primary2,
    this.textColor = NatureColor.whiteTemp,
    this.height,
    this.width,
    this.borderRadius = 10.0,
     this.fontFamily,
     this.fontSize,
    this.letterSpacing,
   this.fontWeight ,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Responsive(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14,horizontal: 24),
          height: height,
          width: width,
          decoration: BoxDecoration(

            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Center(
            child: CustomText(
                text: text,
                fontSize: Constants.getResponsiveFontSize(fontSize??1.4),
                color: textColor,
                fontWeight: fontWeight??FontWeight.normal,
              fontFamily: fontFamily,
              letterSpacing: letterSpacing,
            )
          ),
        ),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';

import '../color/colors.dart';
import '../constants/constants.dart';
import '../constants/responsive.dart';
import 'CustomText.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final List<Color> gradientColors;  // List of colors for the gradient
  final Color textColor;
  final double? height;
  final double? width;
  final double borderRadius;
  final String? fontFamily;
  final double? fontSize;
  final double? letterSpacing;
  final FontWeight? fontWeight;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.gradientColors, // Required for gradient
    this.textColor = NatureColor.whiteTemp,
    this.height,
    this.width,
    this.borderRadius = 10.0,
    this.fontFamily,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Responsive(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: LinearGradient(  // Applying gradient
              colors: gradientColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Center(
            child: CustomText(
              text: text,
              fontSize: Constants.getResponsiveFontSize(fontSize ?? 1.4),
              color: textColor,
              fontWeight: fontWeight ?? FontWeight.normal,
              fontFamily: fontFamily,
              letterSpacing: letterSpacing,
            ),
          ),
        ),
      ),
    );
  }
}
