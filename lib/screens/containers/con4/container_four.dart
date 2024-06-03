import 'package:bus_landing_app/const/colors.dart';
import 'package:flutter/material.dart';

class ContainerFour extends StatelessWidget {
  const ContainerFour({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [
      {
        'icon': 'assets/icons/tv.png',
        'title': 'TV',
        'subTitle':
            'Individual screens or shared TVs with access to movies, TV series and music.'
      },
      {
        'icon': 'assets/icons/snacks.png',
        'title': 'Snacks',
        'subTitle':
            'Sale of snacks, drinks and other snacks on board to satisfy hunger and thirst during the trip.'
      },
      {
        'icon': 'assets/icons/toilet.png',
        'title': 'Toilet',
        'subTitle':
            'Clean and well-maintained toilets available to passengers throughout the trip.'
      },
      {
        'icon': 'assets/icons/reading.png',
        'title': 'Reading lights',
        'subTitle':
            'Individual reading lights so passengers can read comfortably on the go.'
      },
      {
        'icon': 'assets/icons/charging.png',
        'title': 'Charging points',
        'subTitle':
            'Possibility of charging electronic devices right on the bus.'
      },
      {
        'icon': 'assets/icons/air.png',
        'title': 'Air conditioner',
        'subTitle':
            'Climate control for a comfortable temperature in the cabin at any time of the year.'
      },
      {
        'icon': 'assets/icons/free.png',
        'title': 'Free Wi-FI',
        'subTitle': 'Reliable and fast Internet available throughout the trip.'
      },
      {
        'icon': 'assets/icons/rates.png',
        'title': 'Rates',
        'subTitle':
            'Offers different features and price points to suit the different needs and preferences of passengers.'
      },
      {
        'icon': 'assets/icons/pillow.png',
        'title': 'Pillows and blankets',
        'subTitle': 'Comfortable accessories for long trips.'
      },
    ];
    return Container(
      padding: EdgeInsets.all(40),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Services',
              style: TextStyle(fontSize: 28, color: AppColors.primary),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
                'In risus nec molestie at in pulvinar tellus. At integer id condimentum gravida nisi nisl. Sem vitae porttitor arcu congue sem erat et sit faucibus. Sollicitudin elit gravida tellus mattis porttitor.'),
          ),
          SizedBox(
            height: 40,
          ),
          GridView.count(
            crossAxisSpacing: 25,
            mainAxisSpacing: 15,
            childAspectRatio: (MediaQuery.of(context).size.width > 1200)
                ? 2
                : (MediaQuery.of(context).size.width > 1000)
                    ? 1
                    : (MediaQuery.of(context).size.width < 400)
                        ? 0.45
                        : (MediaQuery.of(context).size.width < 800)
                            ? 1
                            : 2,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: (MediaQuery.of(context).size.width > 1200)
                ? 3
                : (MediaQuery.of(context).size.width > 915)
                    ? 4
                    : (MediaQuery.of(context).size.width < 400)
                        ? 2
                        : 2,
            children: List.generate(data.length, (index) {
              return Container(
                  height: 100,
                  width: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(data[index]['icon']!),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        data[index]['title']!,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        data[index]['subTitle']!,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ));
            }),
          ),
        ],
      ),
    );
  }
}
