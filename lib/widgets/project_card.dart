import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 280,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // CARD
          // Project Image Card
          Image.asset(
            "assets/projects/1.png",
            height: 140,
            width: 250,
            fit: BoxFit.cover,
          ),
          // Project Card Title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              "title",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          // Project Card Sub Title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              "some dummy subtitle for this project",
              style: TextStyle(fontSize: 10, color: CustomColor.whiteSecondary),
            ),
          ),
          const Spacer(),
          // Project Card Footer
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                Text(
                  "Available on: ",
                  style: TextStyle(
                    fontSize: 10,
                    color: CustomColor.yellowSecondary,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Image.asset("assets/ios_icon.png", width: 20),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset("assets/android_icon.png", width: 17),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset("assets/web_icon.png", width: 17),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
