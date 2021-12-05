import 'package:flutter/material.dart';
import 'package:rincon/constants/const.dart';
import 'package:rincon/utils/colors.dart';

class CBackButton extends StatelessWidget {
  final VoidCallback onTap;
  const CBackButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              color: kBackIconColor,
              borderRadius: BorderRadius.circular(curveRadius)),
          child: const Center(
              child: Icon(
            Icons.arrow_back_ios,
            color: kButtonColor,
          )),
        ),
      ),
    );
  }
}
