import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsi_mobile_lanjut/ui/splash_screen_view.dart';

void main() {
  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale('id', 'ID'),
      home: SplashScreenView(),
    ),
  );
}

