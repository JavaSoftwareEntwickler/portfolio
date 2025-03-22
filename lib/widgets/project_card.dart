import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/project_utils.dart';

import '../constants/colors.dart';
import 'dart:js' as js;

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.project
  });
  final ProjectUtils project;
  final double width = 260;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: width,
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
            project.image,
            height: 140,
            width: width,
            fit: BoxFit.cover,
          ),
          // Project Card Title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
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
              project.subtitle,
              style: TextStyle(fontSize: 12, color: CustomColor.whiteSecondary),
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
                if(project.iosLink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod('open', [project.iosLink]);
                    },
                    child: Image.asset("assets/ios_icon.png", width: 20),
                  ),
                if(project.androidLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod('open', [project.androidLink]);
                      },
                      child: Image.asset("assets/android_icon.png", width: 17),
                    ),
                  ),
                if(project.webLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod('open', [project.webLink]);
                      },
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
