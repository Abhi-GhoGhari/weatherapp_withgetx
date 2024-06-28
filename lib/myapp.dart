import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherapp_withgetx/view/screen/page/home_page/home_page.dart';
import 'package:weatherapp_withgetx/view/screen/page/intro_page/intro_page.dart';
import 'package:weatherapp_withgetx/view/screen/page/splash_screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: "/",
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: "intro_page",
          page: () => const IntroPage(),
        ),
        GetPage(
          name: "home_page",
          page: () => const HomePage(),
        ),
      ],
    );
  }
}
