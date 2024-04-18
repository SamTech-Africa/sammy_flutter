import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sammy_flutter/src/constants/colors.dart';
import 'package:sammy_flutter/src/constants/sizes.dart';
import 'package:sammy_flutter/src/constants/text_strings.dart';
import 'package:sammy_flutter/src/features/authentication/contollers/onboarding-controller.dart';
import 'package:sammy_flutter/src/features/authentication/models/onboarding-model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../constants/image_strings.dart';
import 'onboarding_page_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});



  @override
  Widget build(BuildContext context) {
    final onboardingController = OnboardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: onboardingController.pages,
            liquidController: onboardingController.controller,
            onPageChangeCallback: onboardingController.onPageChangeCallback,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () => onboardingController.animatedToNextSlide(),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: tDarkColor, shape: BoxShape.circle
                ),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed:() => onboardingController.skip(),
              child: const Text("Skip", style: TextStyle(color: Colors.grey),),
            ),
          ),
          Obx(
            () => Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                count: 3,
                activeIndex:  onboardingController.currentPage.value,
                effect: const WormEffect(
                  activeDotColor: Color(0xff272727),
                  dotHeight: 5.0,
                ),

              ),
            )
          ),
        ],
      ),
    );
  }


}

