import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rincon/constants/image_assets.dart';
import 'package:rincon/screens/onboarding/controller/init_controller.dart';
import 'package:rincon/shared/custom_text.dart';
import 'package:rincon/utils/colors.dart';

import 'components/next_button.dart';

class OnboardTwo extends StatelessWidget {
  const OnboardTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var initController = Get.find<InitialController>();
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(onboard2),
          const CText(
            text: "Food Ninja is Where Your Comfort Food Lives",
            size: 30,
          ),
          const SizedBox(height: 20),
          const CText(
              text: 'Enjoy a fast and smooth food delivery at your doorstep'),
          const SizedBox(height: 40),
          NextButton(
            onTap: () {
              initController.routeIfNotNewUser();
            },
            text: 'Next',
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
