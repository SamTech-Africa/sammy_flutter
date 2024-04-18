import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';
import '../models/onboarding-model.dart';
import '../screens/onboarding/onboarding_page_widget.dart';

class OnboardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnboardingPageWidget(
        model: OnboardingModel(
          image: onboardingImage1,
          title: tOnboardingTitle1,
          subtitle: tOnboardingSubTitle1,
          counterText: tOnboardingCounter1,
          bgColor: tOnboardingPage1Color,
        )
    ),
    OnboardingPageWidget(
        model: OnboardingModel(
          image: onboardingImage2,
          title: tOnboardingTitle2,
          subtitle: tOnboardingSubTitle2,
          counterText: tOnboardingCounter2,
          bgColor: tOnboardingPage2Color,
        )
    ),
    OnboardingPageWidget(
        model: OnboardingModel(
          image: onboardingImage1,
          title: tOnboardingTitle3,
          subtitle: tOnboardingSubTitle3,
          counterText: tOnboardingCounter3,
          bgColor: tOnboardingPage3Color,
        )
    )
  ];

  skip() => controller.jumpToPage(page: 2);
  animatedToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
  onPageChangeCallback(int activePageIndex) => currentPage.value = activePageIndex;

}