import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:rincon/constants/const.dart';
import 'package:rincon/constants/image_assets.dart';
import 'package:rincon/screens/onboarding/views/components/next_button.dart';
import 'package:rincon/shared/back_button.dart';
import 'package:rincon/shared/custom_text.dart';
import 'package:rincon/shared/success_page.dart';
import 'package:rincon/utils/colors.dart';

class CreateVerificationPage extends StatelessWidget {
  CreateVerificationPage({Key? key}) : super(key: key);

  final TextEditingController textController = TextEditingController();

  final FocusNode _pinPutFocusNode = FocusNode();
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      color: kPrimaryColor.withOpacity(0.8),
      border: Border.all(color: kPrimaryColor),
      borderRadius: BorderRadius.circular(20.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(right: 0, child: Image.asset(pattern2)),
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
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CBackButton(
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: CText(
                        text: "Enter 4-digit\nVerification Code",
                        textAlign: TextAlign.left,
                        size: 25,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      height: size.height * 0.10,
                      decoration: BoxDecoration(
                          color: kPrimaryColor.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(curveRadius)),
                      // width: 260,
                      //height: 60,
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.only(left: 50.0, right: 50),
                      child: PinPut(
                        //obscureText: "●",
                        textStyle: const TextStyle(
                            fontSize: 33,
                            fontWeight: FontWeight.w400,
                            color: kWhiteColor),
                        separator: const SizedBox(width: 10),
                        mainAxisSize: MainAxisSize.max,
                        fieldsCount: 4,
                        eachFieldWidth: 60,
                        eachFieldHeight: 60,
                        onSubmit: (String pin) {
                          // print(pin);
                        },
                        onChanged: (pin) {
                          print(pin);
                          if (pin.length == 4) {
                            textController.text = pin;
                            print(textController.text);
                          }
                        },
                        focusNode: _pinPutFocusNode,
                        controller: textController,
                        submittedFieldDecoration: _pinPutDecoration.copyWith(
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                        selectedFieldDecoration: _pinPutDecoration,
                        followingFieldDecoration: _pinPutDecoration.copyWith(
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                      ),
                    ),
                    const Spacer(),
                    NextButton(
                        text: 'Continue',
                        onTap: () {
                          if (textController.text.length == 4) {
                            Get.to(
                              () => SuccessPage(
                                title: "Congrats!",
                                subtitle:
                                    'Verification Code added successfully',
                                buttonText: "Done",
                                buttonCallback: () => Get.toNamed('/home'),
                              ),
                            );
                          } else {
                            Get.snackbar(
                              "Error",
                              'Verification Code must be 4 characters long',
                              backgroundColor: kPrimaryColor,
                              colorText: kWhiteColor,
                              snackPosition: SnackPosition.BOTTOM,
                            );
                          }
                        }),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
