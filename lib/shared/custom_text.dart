import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CText extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;
  final double? wordSpacing;
  final VoidCallback? onClick;
  final double? letterSpacing;
  final TextAlign? textAlign;

  const CText({
    Key? key,
    required this.text,
    this.size,
    this.fontWeight,
    this.color,
    this.wordSpacing,
    this.onClick,
    this.letterSpacing,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: onClick == null
          ? Text(
              text,
              textAlign: textAlign ?? TextAlign.center,
              style: GoogleFonts.sansita(
                fontSize: size ?? 16,
                fontWeight: fontWeight ?? FontWeight.w500,
                color: color ?? Colors.grey,
                wordSpacing: wordSpacing,
                letterSpacing: letterSpacing ?? 0,
              ),
            )
          : TextButton(
              onPressed: () => onClick?.call(),
              child: Text(
                text,
                style: GoogleFonts.sansita(
                  fontSize: size ?? 16,
                  fontWeight: fontWeight ?? FontWeight.w500,
                  color: color ?? Colors.grey,
                  wordSpacing: wordSpacing,
                ),
              ),
            ),
    );
  }
}
