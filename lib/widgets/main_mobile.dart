import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 30,
      ),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Use a Row to move the image to the right
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Move content to the right
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0), // Add padding if needed
                child: ShaderMask(
                  shaderCallback: (bounds) {
                    return LinearGradient(
                      colors: [
                        CustomColor.scaffoldBg.withOpacity(0.6),
                        CustomColor.scaffoldBg.withOpacity(0.6),
                      ],
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.srcATop,
                  child: Image.asset(
                    "assets/logo.png",
                    width: screenWidth / 2, // Adjust the width as necessary
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          // Intro message
          const Text(
            "Hi,\nI'm Lakshay Chauhan\nA Software Developer",
            style: TextStyle(
              fontSize: 24,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 15),
          // Contact button
          SizedBox(
            width: 190,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Get in Touch"),
            ),
          )
        ],
      ),
    );
  }
}
