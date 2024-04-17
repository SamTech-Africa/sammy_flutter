import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sammy_flutter/src/constants/colors.dart';
import 'package:sammy_flutter/src/constants/text_strings.dart';

import '../../../constants/image_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages:  [
            Container(
              color: tOnboardingPage1Color,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage(onboardingImage1)),
                Column(
                  children: [
                    Text(tOnboardingTitle1),
                    Text(tOnboardingSubTitle1),
                  ],
                ),
                Text(tOnboardingCounter1),
              ]
            ),),
            Container(color: tOnboardingPage1Color, ),
            Container(color: tOnboardingPage1Color,)
          ]
          ),
        ],
      ),
    );
  }
}