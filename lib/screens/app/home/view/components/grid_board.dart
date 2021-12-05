import 'package:flutter/material.dart';
import 'package:rincon/constants/const.dart';
import 'package:rincon/constants/image_assets.dart';
import 'package:rincon/shared/custom_text.dart';
import 'package:rincon/utils/colors.dart';

class GridDashboard extends StatelessWidget {
  GridDashboard({Key? key}) : super(key: key);
  Items item1 = Items(
      title: "Candid Hews",
      subtitle: "Click to order Now",
      event: "",
      img: dish1);

  Items item2 = Items(
    title: "Soba Soup",
    subtitle: "Click to order Now",
    event: "",
    img: dish2,
  );
  Items item3 = Items(
    title: "Khantoke",
    subtitle: "Click to order Now",
    event: "",
    img: dish3,
  );
  Items item4 = Items(
    title: "Momos",
    subtitle: "Click to order Now",
    event: "",
    img: dish4,
  );
  Items item5 = Items(
    title: "chilli Crab",
    subtitle: "Click to order Now",
    event: "",
    img: dish1,
  );
  Items item6 = Items(
    title: "Pizza",
    subtitle: "Click to order Now",
    event: "",
    img: dish5,
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    // var color = 0xff453658;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          //padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return GestureDetector(
              onTap: () {
                // if (data.title == "Fund") {

                // } else if (data.title == "Transfer") {
                //   Get.to(() => const Transfer());
                // } else if (data.title == "Transfer") {
                //   Get.to(() => const Transfer());
                // } else if (data.title == "Withdraw") {
                //   Get.to(() => Withdraw());
                // }
              },
              child: Container(
                height: 194,
                decoration: BoxDecoration(
                  color: kTransparentColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(curveRadius),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      data.img,
                      width: 98,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    CText(
                      text: data.title,
                      color: kWhiteColor,
                      size: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CText(
                        text: data.subtitle,
                        color: kWhiteColor,
                        size: 10,
                        fontWeight: FontWeight.w600),
                    const SizedBox(
                      height: 14,
                    ),
                    CText(
                        text: data.event,
                        color: kWhiteColor,
                        size: 11,
                        fontWeight: FontWeight.w600),
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items(
      {required this.title,
      required this.subtitle,
      required this.event,
      required this.img});
}
