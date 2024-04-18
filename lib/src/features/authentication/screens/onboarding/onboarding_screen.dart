import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sammy_flutter/src/constants/colors.dart';
import 'package:sammy_flutter/src/constants/sizes.dart';
import 'package:sammy_flutter/src/constants/text_strings.dart';
import 'package:sammy_flutter/src/features/authentication/models/onboarding-model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../constants/image_strings.dart';
import 'onboarding_page_widget.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final controller = LiquidController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      OnboardingPageWidget(
        model: OnboardingModel(
          image: onboardingImage1,
          title: tOnboardingTitle1,
          subtitle: tOnboardingSubTitle1,
          counterText: tOnboardingCounter1,
          height: size.height,
          bgColor: tOnboardingPage1Color,
        )
      ),
      OnboardingPageWidget(
          model: OnboardingModel(
            image: onboardingImage2,
            title: tOnboardingTitle2,
            subtitle: tOnboardingSubTitle2,
            counterText: tOnboardingCounter2,
            height: size.height,
            bgColor: tOnboardingPage2Color,
          )
      ), 
      OnboardingPageWidget(
          model: OnboardingModel(
            image: onboardingImage1,
            title: tOnboardingTitle3,
            subtitle: tOnboardingSubTitle3,
            counterText: tOnboardingCounter3,
            height: size.height,
            bgColor: tOnboardingPage3Color,
          )
      )
    ];



    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            liquidController: controller,
            onPageChangeCallback: onPageChangeCallback,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: (){},
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
              onPressed: () => controller.jumpToPage(page: 2),
              child: const Text("Skip", style: TextStyle(color: Colors.grey),),
            ),
          ),
          Positioned(
            bottom: 3,
            child: AnimatedSmoothIndicator(
              count: 3,
              activeIndex:  controller.currentPage,
              effect: const WormEffect(
                activeDotColor: Color(0xff272727),
                dotHeight: 5.0,
              ),

            ),
          ),
        ],
      ),
    );
  }

  onPageChangeCallback(int activePageIndex) {
    currentPage = activePageIndex;
  }
}

