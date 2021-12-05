import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rincon/constants/image_assets.dart';
import 'package:rincon/shared/custom_text.dart';
import 'package:rincon/utils/colors.dart';

import 'components/next_button.dart';

class OnboardOne extends StatelessWidget {
  const OnboardOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(onboard1),
          const CText(
            text: "Find your Comfort food here",
            size: 30,
          ),
          const SizedBox(height: 20),
          const CText(
              text:
                  'Here You Can find a chef or dish for every taste and color. Enjoy!'),
          const SizedBox(height: 40),
          NextButton(
            onTap: () {
              Get.toNamed('/onboard_two');
            },
            text: 'Next',
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
