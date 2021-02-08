import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'GetxNavigation/GetxNavigationScreen.dart';
import 'GetxNavigation/ScreenFive.dart';
import 'GetxNavigation/ScreenFour.dart';
import 'GetxNavigation/ScreenThree.dart';
import 'GetxNavigation/ScreenTwo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => GetxNavigationScreen(),
        ),
        GetPage(
          name: '/two',
          page: () => ScreenTwo(),
        ),
        GetPage(
          name: '/three',
          page: () => ScreenThree(),
        ),
        GetPage(
          name: '/four',
          page: () => ScreenFour(),
        ),
        GetPage(
          name: '/five/:param',
          page: () => ScreenFive(),
        ),
      ],
    );
  }
}
