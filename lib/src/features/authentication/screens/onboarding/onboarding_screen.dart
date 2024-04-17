import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sammy_flutter/src/constants/colors.dart';
import 'package:sammy_flutter/src/constants/sizes.dart';
import 'package:sammy_flutter/src/constants/text_strings.dart';
import 'package:sammy_flutter/src/features/authentication/models/onboarding-model.dart';

import '../../../../constants/image_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages:  [
            OnboardingPage(size: size),
            Container(color: tOnboardingPage1Color, ),
            Container(color: tOnboardingPage1Color,)
          ]
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.model,
  });

  final OnboardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         Image(image: AssetImage(model.image), height: model.height * 0.5,),
        Column(
          children: [
            Text(tOnboardingTitle1, style: Theme.of(context).textTheme.titleLarge,),
            const Text(tOnboardingSubTitle1, textAlign: TextAlign.center,),
          ],
        ),
         Text(tOnboardingCounter1,style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 50.0,)
      ]
    ),);
  }
}