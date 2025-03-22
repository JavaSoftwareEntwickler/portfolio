import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;
    return   Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: screenHeight,
      constraints: BoxConstraints(minHeight: 560.0),
      child: Column(
        children: [
          ShaderMask(
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
              "assets/max.png",
              width: screenWidth / 1.4,
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            "Hi,\n"
                "I'm Max Marchesini \n"
                "A Full-Stack developer",
            style: const TextStyle(
              fontSize: 24.0,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          SizedBox(height: 20.0),
          SizedBox(
            width: 210.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColor.yellowPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Contact me",
                style: TextStyle(
                  color: CustomColor.whitePrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
