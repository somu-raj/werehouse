
import 'package:flutter/material.dart';
import 'package:werehouse/constants/responsive.dart';


import '../color/colors.dart';


class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? filled;
  final Color? fillColor;
  final Color? borderColor;
  final bool? obscureText;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;

  const CustomTextFormField({
    super.key,
  //  required this.labelText,
    required this.hintText,
    required this.controller,
 //   required this.icon,
    this.suffixIcon,
    this.obscureText = false,
    this.onChanged,
    this.borderColor,
    this.validator,
    this.prefixIcon,
    this.filled,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return Responsive(
      child: TextFormField(
        controller: controller,
        obscureText: obscureText!,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon,
         prefixIcon: prefixIcon,
         fillColor: fillColor,
          // contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10), // Adjust this padding to increase size

          filled: filled,
         isDense: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              color: Colors
                  .grey, // Set the color when the field is selected
            ),
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide:  BorderSide(
              color: borderColor??Colors
                  .grey, // Set the default border color
            ),
          ),
          errorBorder: OutlineInputBorder(

            gapPadding: 12,
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              color: Colors
                  .red, // Set the default border color
            ),
          ),
        ),
        onChanged: onChanged,
        validator: validator,
      ),
    );
  }
}
