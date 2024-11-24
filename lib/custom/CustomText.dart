/*
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final String? fontFamily;
  final bool isUnderlined;

  CustomText({
    required this.text,
    required this.fontSize,
    required this.color,
    required this.fontWeight,
    this.fontStyle = FontStyle.normal,
    this.fontFamily,
    this.isUnderlined = false,
  });

  double getResponsiveFontSize(BuildContext context, double size) {
    return size * MediaQuery.of(context).size.width / 100;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      style: TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize),
        color: color,

        decoration: isUnderlined ? TextDecoration.underline : TextDecoration.none,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        fontFamily: fontFamily,
      ),
    );
  }
}


*/
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextOverflow? overFlow;
  final FontStyle fontStyle;
  final String? fontFamily;
  final bool isUnderlined;
  final TextAlign textAlign; // New property for text alignment
  final double? letterSpacing; // New property for text alignment

  const CustomText({
    super.key,
    required this.text,
    required this.fontSize,
     this.color,
     this.fontWeight,
    this.fontStyle = FontStyle.normal,
    this.fontFamily,
    this.overFlow,
    this.isUnderlined = false,
    this.textAlign = TextAlign.start,
    this.letterSpacing, // Default alignment
  });



  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: Constants.getResponsiveFontSize(fontSize),
        color: color,
        decoration: isUnderlined ? TextDecoration.underline : TextDecoration.none,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        fontFamily: fontFamily,
        letterSpacing: letterSpacing,
      ),
      overflow: overFlow,
      textAlign: textAlign, // Apply alignment
    );
  }
}
