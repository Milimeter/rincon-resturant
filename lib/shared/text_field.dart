import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rincon/constants/const.dart';
import 'package:rincon/utils/colors.dart';

class CTextField extends StatelessWidget {
  final String hint;
  const CTextField({Key? key, required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 50,
      width: size.width,
      decoration: BoxDecoration(
          color: kTransparentColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(curveRadius)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          showCursor: false,
          cursorColor: kWhiteColor,
          style: GoogleFonts.sansita(color: kWhiteColor, fontSize: 18),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: GoogleFonts.sansita(
              color: kWhiteColor,
            ),
            prefixIcon: const Icon(
              Entypo.magnifying_glass,
              color: kWhiteColor,
            ),
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
