import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:rincon/constants/image_assets.dart';
import 'package:rincon/shared/custom_text.dart';
import 'package:rincon/shared/notification_button.dart';
import 'package:rincon/shared/text_field.dart';
import 'package:rincon/utils/colors.dart';

import 'components/grid_board.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(children: [
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
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: CText(
                        text: 'Find Your\nFavorite Food',
                        color: kWhiteColor,
                        size: 31,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    CNotificationButton(
                      onTap: () {},
                    )
                  ],
                ),
                SizedBox(height: size.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: CTextField(
                        hint: 'What do you want to order?',
                      ),
                    ),
                    const SizedBox(width: 10),
                    CButton(
                      onTap: () {},
                      icon: Entypo.sound_mix,
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.03),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: CText(
                    text: 'Popular Foods',
                    color: kWhiteColor,
                    size: 18,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                    textAlign: TextAlign.left,
                  ),
                ),
                GridDashboard()
              ],
            ),
          )),
    ]));
  }
}
