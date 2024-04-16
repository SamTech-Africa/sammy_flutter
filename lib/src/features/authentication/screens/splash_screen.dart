import 'package:flutter/material.dart';
import 'package:sammy_flutter/src/constants/colors.dart';
import 'package:sammy_flutter/src/constants/text_strings.dart';
import 'package:sammy_flutter/src/features/authentication/screens/welcome_screen.dart';

import '../../../constants/image_strings.dart';
import '../../../constants/sizes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;


  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: animate ? 0 : -30,
            left: animate ? 0 : -30,
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,
              ),


            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: 80,
            left: animate ? tDefaultSize : -80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tAppName, style: Theme.of(context).textTheme.headlineSmall,),
                Text(tAppTagLine, style: Theme.of(context).textTheme.headlineMedium,)
              ],
            ),
          ),
          const Positioned(
            right: 0,
            left: 0,
            bottom: 60,
            child: Image(image: AssetImage(revoSplashImage),),
          ),
          Positioned(
            bottom: 40,
            right: tDefaultSize,
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,
              ),


            ),
          ),
        ],
      ),
    );
  }

  Future startAnimation() async{
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() => animate =true);
      await Future.delayed(const Duration(milliseconds: 5000));
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const WelcomeScreen()));
  }
}