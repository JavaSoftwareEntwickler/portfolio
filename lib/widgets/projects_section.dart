import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/widgets/project_card.dart';

import '../constants/colors.dart';
import '../utils/project_utils.dart';


class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          //Work prj Title
          const Text(
            "Work projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 50),
          //Work prj cards
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 900,
            ),
            child: Wrap(
              spacing: 25.0,
              runSpacing: 25.0,
              children: [
                for (var i = 0; i < workProjectUtils.length; i++)
                  ProjectCardWidget(project: workProjectUtils[i]),
              ],
            ),
          ),
          const SizedBox(height: 80),
          //Personal prj Title
          const Text(
            "Work projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 50),
          //Personal prj cards
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 900,
            ),
            child: Wrap(
              spacing: 25.0,
              runSpacing: 25.0,
              children: [
                for (var i = 0; i < hobbyProjectUtils.length; i++)
                  ProjectCardWidget(project: hobbyProjectUtils[i]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
