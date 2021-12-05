import 'package:flutter/material.dart';
import 'package:rincon/constants/image_assets.dart';
import 'package:rincon/screens/onboarding/views/components/next_button.dart';
import 'package:rincon/shared/custom_text.dart';
import 'package:rincon/utils/colors.dart';

class SuccessPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttonText;
  final VoidCallback buttonCallback;
  const SuccessPage(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.buttonText,
      required this.buttonCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(pattern),
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  kPrimaryColor.withOpacity(0.8),
                  kPrimaryColor,
                ],
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(success),
                    const SizedBox(height: 10),
                    CText(
                        text: title,
                        color: kSecondaryColor,
                        size: 30,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1),
                    const SizedBox(height: 10),
                    CText(
                      text: subtitle,
                      //color: kSecondaryColor,
                      size: 23,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(height: 100),

                    // const SizedBox(height: 50),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      margin: const EdgeInsets.only(bottom: 40),
                      child: NextButton(text: 'Done', onTap: buttonCallback)),
                )
              ],
            ),
          )
        ],
      ),
    );
  
  }
}
