import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rincon/screens/app/home/view/home_page.dart';
import 'package:rincon/screens/onboarding/binding/init_binding.dart';
import 'package:rincon/utils/colors.dart';

import 'screens/app/home/binding/home_binding.dart';
import 'screens/onboarding/views/onboard_one.dart';
import 'screens/onboarding/views/onboard_two.dart';
import 'screens/onboarding/views/pages/verification_code.dart';
import 'screens/onboarding/views/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
    statusBarColor: kPrimaryColor,
  ));
  await GetStorage.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rincon',
      getPages: [
        GetPage(name: '/splash', page: ()=> const SplashScreen(), binding: InitBinding()),
        GetPage(name: '/onboard_one', page: ()=> const OnboardOne(), ),
        GetPage(name: '/onboard_two', page: ()=> const OnboardTwo(), ),
        GetPage(name: '/add_code', page: ()=>  CreateVerificationPage(), ),
        GetPage(name: '/home', page: ()=>  HomeScreen(), binding: HomeBinding()),
      ],

      initialRoute: '/splash',


    );
  }
}
