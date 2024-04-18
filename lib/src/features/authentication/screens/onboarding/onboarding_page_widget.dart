import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../models/onboarding-model.dart';


class OnboardingPageWidget extends StatelessWidget {
  const OnboardingPageWidget({
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
            Image(image: AssetImage(model.image), height: model.height * 0.4,),
            Column(
              children: [
                Text(model.title, style: Theme.of(context).textTheme.titleLarge,),
                Text(model.subtitle, textAlign: TextAlign.center,),
              ],
            ),
            Text(model.counterText,style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 80.0,)
          ]
      ),);
  }
}