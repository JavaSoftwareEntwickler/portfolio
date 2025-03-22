import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20,),
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.transparent,
          CustomColor.bgLight1,
        ]),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
// Logo
          Text(
            'MM',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              color: CustomColor.yellowSecondary,
            ),),
          Spacer(),
// Navigation bar
          for (int i = 0; i < navItems.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                  onPressed: (){},
                  child: Text(
                    navItems[i],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.whitePrimary,
                    ),
                  )
              ),
            ),
        ],
      ),
    );
  }
}
