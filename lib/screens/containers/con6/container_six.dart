import 'package:bus_landing_app/const/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ContainerSix extends StatelessWidget {
  const ContainerSix({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: AppColors.primary,
      child: (screenWidth > 700)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: screenWidth / 2.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Photo gallery',
                        style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'The photo shows buses from well-known companies offering comfortable and safe transportation. Each one has its own unique design and services offered to ensure a pleasant travel experience for passengers. Modern technologies and innovative solutions in the field of comfort make a trip on these buses truly enjoyable and memorable.',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                ),
                Container(
                  width: screenWidth / 2.8,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      CarouselSlider(
                        options: CarouselOptions(
                          height: MediaQuery.of(context).size.height / 3,
                        ),
                        items: [
                          1,
                          2,
                          3,
                        ].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 1000,
                                        child: Image.asset(
                                          'assets/images/transport' +
                                              i.toString() +
                                              '.png',
                                          fit: BoxFit.cover,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              4,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        child: Row(children: [
                                          SizedBox(
                                            width: 20,
                                          ),
                                          ClipOval(
                                            child: SizedBox.fromSize(
                                              size: Size.fromRadius(
                                                  18), // Image radius
                                              child: Image.asset(
                                                'assets/images/bus_icon.png',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text((i == 1)
                                              ? 'Kaz Express'
                                              : (i == 2)
                                                  ? 'ExpressWay'
                                                  : 'OneWay')
                                        ]),
                                      )
                                    ],
                                  ));
                            },
                          );
                        }).toList(),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Photo gallery',
                        style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'The photo shows buses from well-known companies offering comfortable and safe transportation. Each one has its own unique design and services offered to ensure a pleasant travel experience for passengers. Modern technologies and innovative solutions in the field of comfort make a trip on these buses truly enjoyable and memorable.',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.height / 3,
                      ),
                      items: [
                        1,
                        2,
                        3,
                      ].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 1000,
                                      child: Image.asset(
                                        'assets/images/transport' +
                                            i.toString() +
                                            '.png',
                                        fit: BoxFit.cover,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                4,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      child: Row(children: [
                                        SizedBox(
                                          width: 20,
                                        ),
                                        ClipOval(
                                          child: SizedBox.fromSize(
                                            size: Size.fromRadius(
                                                18), // Image radius
                                            child: Image.asset(
                                              'assets/images/bus_icon.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text((i == 1)
                                            ? 'Kaz Express'
                                            : (i == 2)
                                                ? 'ExpressWay'
                                                : 'OneWay')
                                      ]),
                                    )
                                  ],
                                ));
                          },
                        );
                      }).toList(),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
