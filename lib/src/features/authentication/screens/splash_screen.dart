import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:sammy_flutter/src/constants/colors.dart';
import 'package:sammy_flutter/src/constants/text_strings.dart';
import 'package:sammy_flutter/src/features/authentication/screens/welcome_screen.dart';

import '../../../constants/image_strings.dart';
import '../../../constants/sizes.dart';
import '../contollers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());


  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx( () => AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: splashController.animate.value ? 0 : -30,
            left: splashController.animate.value ? 0 : -30,
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,
              ),


            ),
          )),
          Obx(() => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 80,
              left: splashController.animate.value ? tDefaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tAppName, style: Theme.of(context).textTheme.headlineSmall,),
                    Text(tAppTagLine, style: Theme.of(context).textTheme.headlineMedium,)
                  ],
                ),
              )
          )),
          Obx(() => AnimatedPositioned(
            duration: const Duration(milliseconds: 2600),
            right: 0,
            left: 0,
            bottom: 60,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 2400),
              opacity: splashController.animate.value ? 1 : 0,
              child: const Image(image: AssetImage(revoSplashImage),),
            ),
          )),
          Obx(() => AnimatedPositioned(
            duration: const Duration(milliseconds: 2400),
            bottom: 40,
            right: tDefaultSize,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 2000),
              opacity: splashController.animate.value ? 1 : 0,
              child: Container(
                width: tSplashContainerSize,
                height: tSplashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tPrimaryColor,
                ),


              ),
            ),
          )),
        ],
      ),
    );
  }

}