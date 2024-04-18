import 'package:flutter/material.dart';
import 'package:sammy_flutter/src/constants/image_strings.dart';
import 'package:sammy_flutter/src/constants/text_strings.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Column(
          children: [
            Image(image: AssetImage(banner)),
            Text(tWelcomeTitle),
            Text(tWelcomeSubtitle),
            Row(
              children: [
                // OutlinedButton(onPressed: () {}, child: Text('Login'))
              ],
            )
          ],
        ),
      ),
    );
  }
}