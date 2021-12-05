import 'package:flutter/material.dart';
import 'package:rincon/constants/const.dart';
import 'package:rincon/shared/custom_text.dart';
import 'package:rincon/utils/colors.dart';

class NextButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const NextButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 57,
        width: 157,
        decoration: BoxDecoration(
            color: kButtonColor,
            borderRadius: BorderRadius.circular(curveRadius)),
        child: Center(
          child: CText(
            text: text,
            color: kWhiteColor,
            size: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
