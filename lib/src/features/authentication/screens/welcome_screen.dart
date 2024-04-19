import 'package:flutter/material.dart';
import 'package:sammy_flutter/src/constants/image_strings.dart';
import 'package:sammy_flutter/src/constants/sizes.dart';
import 'package:sammy_flutter/src/constants/text_strings.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(image: AssetImage(banner)),
            Column(
             children: [
               Text(tWelcomeTitle, style: Theme.of(context).textTheme.titleLarge,),
               Text(tWelcomeSubtitle, style: Theme.of(context).textTheme.bodyLarge,),
             ],
            ),
            Row(
              children: [
                OutlinedButton(onPressed: (){}, child: const Text(tLogin)),
                ElevatedButton(onPressed: () {}, child: const Text(tSignup))
              ],
            )
          ],
        ),
      ),
    );
  }
}