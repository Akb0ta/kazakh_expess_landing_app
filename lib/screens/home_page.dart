import 'package:bus_landing_app/const/colors.dart';
import 'package:bus_landing_app/screens/components/navbar_button.dart';
import 'package:bus_landing_app/screens/components/navbar_item.dart';
import 'package:bus_landing_app/screens/containers/con1/container_one.dart';
import 'package:bus_landing_app/screens/containers/con2/container_two.dart';
import 'package:bus_landing_app/screens/containers/con3/container_three.dart';
import 'package:bus_landing_app/screens/containers/con4/container_four.dart';
import 'package:bus_landing_app/screens/containers/con5/container_five.dart';
import 'package:bus_landing_app/screens/containers/con6/container_six.dart';
import 'package:bus_landing_app/screens/containers/con7/container_seven.dart';
import 'package:bus_landing_app/screens/containers/con8/container_eight.dart';
import 'package:flutter/material.dart';

double collapsableHeight = 0.0;

List<Widget> navBarItems = [
  NavBarItem(
    text: 'About',
  ),
  NavBarItem(
    text: 'Explore',
  ),
  NavBarItem(
    text: 'Search',
  ),
  NavBarItem(
    text: 'Help',
  ),
];

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.kPrimaryBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    color: Colors.white,
                  ),
                  AnimatedContainer(
                    margin: EdgeInsets.only(top: 79.0),
                    duration: Duration(milliseconds: 375),
                    curve: Curves.ease,
                    height: (width < 800.0) ? collapsableHeight : 0.0,
                    width: double.infinity,
                    color: AppColors.primary,
                    child: SingleChildScrollView(
                      child: Column(
                        children: navBarItems,
                      ),
                    ),
                  ),
                  Container(
                    color: AppColors.kPrimaryWhite,
                    height: 80.0,
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 180,
                          child: Image.asset('assets/images/header-icon.png'),
                        ),
                        LayoutBuilder(builder: (context, constraints) {
                          if (width < 800.0) {
                            return NavBarButton(
                              onPressed: () {
                                if (collapsableHeight == 0.0) {
                                  setState(() {
                                    collapsableHeight = 240.0;
                                  });
                                } else if (collapsableHeight == 240.0) {
                                  setState(() {
                                    collapsableHeight = 0.0;
                                  });
                                }
                              },
                            );
                          } else {
                            return Row(
                              children: navBarItems,
                            );
                          }
                        })
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ContainerOne(),
            ContainerTwo(),
            ContainerThree(),
            ContainerFour(),
            ContainerSix(),
            ContainerFive(),
            ContainerSeven(),
            ContainerEight()
          ],
        ),
      ),
    );
  }
}
