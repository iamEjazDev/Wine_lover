import 'package:flutter/material.dart';


class CommonUseTfield extends StatelessWidget {
  const CommonUseTfield({
  super.key,
  this.obscureText = false,
  this.suffixIcon,
  this.keyboardType,
  required this.hintText,
  this.textStyle
  });
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String hintText;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: textStyle, 
        suffixIcon: suffixIcon,
        // contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(
            color: Color(0xff77DD77)
          )
        )
      ),
    );
  }
}