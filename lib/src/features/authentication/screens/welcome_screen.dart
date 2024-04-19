import 'package:flutter/material.dart';
import 'package:sammy_flutter/src/constants/colors.dart';
import 'package:sammy_flutter/src/constants/image_strings.dart';
import 'package:sammy_flutter/src/constants/sizes.dart';
import 'package:sammy_flutter/src/constants/text_strings.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: const AssetImage(banner), height: height * 0.6,),
            Column(
             children: [
               Text(tWelcomeTitle, style: Theme.of(context).textTheme.titleLarge,),
               Text(
                 tWelcomeSubtitle,
                 style: Theme.of(context).textTheme.bodyLarge,
                 textAlign: TextAlign.center,
               ),
             ],
            ),
            Row(
              children: [
               Expanded(
                   child:  OutlinedButton(
                       onPressed: (){},

                       child: Text(tLogin.toUpperCase())
                   ),
               ),
                const SizedBox(height: 10.0,),
                Expanded(
                    child:   ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: const RoundedRectangleBorder(),
                            foregroundColor: tWhiteColor,
                            backgroundColor: tSecondaryColor,
                            side: const BorderSide(color: tSecondaryColor),
                            padding: const EdgeInsets.symmetric(vertical: tButtonHeight)
                        ),
                        child: Text(tSignup.toUpperCase())
                    ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}