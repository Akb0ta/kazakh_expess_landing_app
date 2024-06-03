import 'package:bus_landing_app/const/colors.dart';
import 'package:flutter/material.dart';

class ContainerSeven extends StatelessWidget {
  const ContainerSeven({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 3.4,
            decoration: BoxDecoration(
                color: AppColors.primary,
                image: DecorationImage(
                    image: AssetImage('assets/images/background1.png'))),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
              color: AppColors.primary,
            ),
            child: Center(
              child: Column(children: [
                Text(
                  'KAZAKH EXPRESS',
                  style: TextStyle(
                      color: Colors.grey[200],
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Download now!',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Malesuada ut aliquam at ac est nisi, interdum etiam dignissim.Risus elit et fringilla habitant ut facilisi',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 140,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.primary)),
                  child: Center(
                    child: Text(
                      'Download',
                      style: TextStyle(color: AppColors.primary),
                    ),
                  ),
                )
              ]),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 3.42,
            decoration: BoxDecoration(
                color: AppColors.primary,
                image: DecorationImage(
                    image: AssetImage('assets/images/background1.png'))),
          ),
        ],
      ),
    );
  }
}