import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:rincon/constants/const.dart';
import 'package:rincon/utils/colors.dart';

class CNotificationButton extends StatelessWidget {
  final VoidCallback onTap;
  const CNotificationButton({Key? key, required this.onTap}) : super(key: key);

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
              color: kTransparentColor,
              borderRadius: BorderRadius.circular(curveRadius)),
          child: const Center(
              child: Icon(
            Entypo.bell,
            color: kButtonColor,
          )),
        ),
      ),
    );
  }
}

class CButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  const CButton({Key? key, required this.onTap, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          height: 50,
          width: 49,
          decoration: BoxDecoration(
              color: kTransparentColor,
              borderRadius: BorderRadius.circular(curveRadius)),
          child: Center(
              child: Icon(
            icon,
            color: kWhiteColor,
          )),
        ),
      ),
    );
  }
}
