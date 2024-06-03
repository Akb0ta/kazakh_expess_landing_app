import 'package:bus_landing_app/const/colors.dart';
import 'package:flutter/material.dart';

class ContainerEight extends StatelessWidget {
  const ContainerEight({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'KAZAKHEXPRESS',
            style: TextStyle(
                fontSize: (width < 700) ? 14 : 18,
                fontWeight: FontWeight.w700,
                color: AppColors.primary),
          ),
          Text(
            '@ 2023 All rights reserved.',
            style: TextStyle(color: Colors.grey),
          ),
          Image.asset(
            'assets/images/social.png',
            width: (width < 700) ? 100 : 120,
          )
        ],
      ),
    );
  }
}
