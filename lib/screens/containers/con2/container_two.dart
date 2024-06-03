import 'package:bus_landing_app/const/colors.dart';
import 'package:flutter/material.dart';

class ContainerTwo extends StatelessWidget {
  const ContainerTwo({super.key});

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width / 3.3;
    double cardHeight = MediaQuery.of(context).size.height / 3.6;
    var data = [
      'Enter your starting and ending points and the date of your trip. Our algorithm instantly finds available flights with detailed information.',
      'Browse your search results and choose the flight that suits you best.We have filters that will help you sort flights by any parameters',
      'Check the bus seating chart and select your preferred seats.We offer detailed bus maps so you can choose the most comfortable seats',
      'Choose convenient payment method. All transactions are protected by modern encryption technologies.',
      'After payment, you will receive an electronic ticket, which you can save on your smartphone or print.',
      "You'll receive notifications about your upcoming trip, including reminders and important information. "
    ];
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          SizedBox(
            height: 65,
          ),
          Center(
            child: Text(
              'Book A Ticket And Go On An Adventure',
              style: TextStyle(fontSize: 28, color: AppColors.primary),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              'We are an innovative company specializing in simplifying the process of buying tickets for intercity buses in Kazakhstan. Our mission is to make travel more accessible, convenient and safe for everyone.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              'How it works?',
              style: TextStyle(fontSize: 28, color: AppColors.primary),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            childAspectRatio: (MediaQuery.of(context).size.width > 1200)
                ? 0.9
                : (MediaQuery.of(context).size.width > 915)
                    ? 1
                    : (MediaQuery.of(context).size.width < 440)
                        ? 1
                        : (MediaQuery.of(context).size.width < 800)
                            ? 1
                            : 2,
            crossAxisCount: (MediaQuery.of(context).size.width > 1200)
                ? 6
                : (MediaQuery.of(context).size.width > 900)
                    ? 4
                    : (MediaQuery.of(context).size.width > 900)
                        ? 3
                        : (MediaQuery.of(context).size.width < 440)
                            ? 1
                            : 2,
            children: List.generate(data.length, (index) {
              return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 3, color: AppColors.primary)),
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          (index + 1).toString(),
                          style: TextStyle(
                              fontSize: 28,
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        data[index],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: (MediaQuery.of(context).size.width > 1200)
                              ? 18
                              : (MediaQuery.of(context).size.width > 900)
                                  ? 22
                                  : (MediaQuery.of(context).size.width < 500)
                                      ? 24
                                      : 18,
                        ),
                      )
                    ],
                  ));
            }),
          ),
        ],
      ),
    );
  }
}
