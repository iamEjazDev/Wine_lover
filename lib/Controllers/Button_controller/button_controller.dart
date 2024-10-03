import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CommonUseButton extends StatelessWidget {
  const CommonUseButton({
    super.key,
  required this.text,
  required this.height,
  required this.width,
  required this.fontSize,
  required this.fontWeight,
  required this.color,
  required this.onPressed,
  this.backgroundColor,
  this.borderradius
  });
  final String text;
  final double height;
  final double width;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final BorderRadius? borderradius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius:borderradius ?? BorderRadius.zero
          )
        ),
        onPressed: onPressed, 
        child: Text(
          text,
        style: GoogleFonts.inter(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color
          ),
        )
      ),
    );
  }
}