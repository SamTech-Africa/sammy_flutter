import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:sammy_flutter/src/features/authentication/screens/onboarding_screen.dart';
import 'package:sammy_flutter/src/features/authentication/screens/welcome_screen.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;


  Future startAnimation() async{
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value =true;
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to(const OnboardingScreen());
  }
}