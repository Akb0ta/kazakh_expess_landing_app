import 'dart:developer';

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

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ScrollController _controller = ScrollController();
  final GlobalKey _container1Key = GlobalKey();
  final GlobalKey _container2Key = GlobalKey();

  final GlobalKey _container3Key = GlobalKey();

  final GlobalKey _container4Key = GlobalKey();

  void _scrollToContainer(int index) {
    final RenderObject? renderObject = (index == 1)
        ? _container1Key.currentContext?.findRenderObject()
        : (index == 2)
            ? _container2Key.currentContext?.findRenderObject()
            : (index == 3)
                ? _container3Key.currentContext?.findRenderObject()
                : _container4Key.currentContext?.findRenderObject();
    if (renderObject != null && _controller.hasClients) {
      var offset = renderObject.semanticBounds.shortestSide;
      if (index == 4) {
        offset = _controller.position.maxScrollExtent - 80;
      }
      if (index == 3) {
        offset = renderObject.semanticBounds.longestSide;
      }
      if (index == 1) {
        offset = 0;
      }
      _controller.animateTo(offset,
          duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    List<Widget> navBarItems = [
      InkWell(
        onTap: () {
          _scrollToContainer(1);
        },
        child: NavBarItem(
          text: 'Home',
        ),
      ),
      InkWell(
        onTap: () {
          _scrollToContainer(2);
        },
        child: NavBarItem(
          text: 'About',
        ),
      ),
      InkWell(
        onTap: () {
          _scrollToContainer(3);
        },
        child: NavBarItem(
          text: 'Services',
        ),
      ),
      InkWell(
        onTap: () {
          _scrollToContainer(4);
        },
        child: NavBarItem(
          text: 'Contacts',
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: AppColors.kPrimaryBackgroundColor,
      body: SingleChildScrollView(
        controller: _controller,
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
            ContainerOne(
              key: _container1Key,
            ),
            ContainerTwo(
              key: _container2Key,
            ),
            ContainerThree(
              key: _container3Key,
            ),
            ContainerFour(
              key: _container4Key,
            ),
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
