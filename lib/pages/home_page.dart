import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //Main section
          Container(
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
          ),
          //Skills section
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          //Project section
          Container(
            height: 500,
            width: double.maxFinite,
          ),
          //Contact section
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          //Footer section
          Container(
            height: 500,
            width: double.maxFinite,
          ),
        ],
      )
    );
  }
}
