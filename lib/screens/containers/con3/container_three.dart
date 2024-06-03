import 'package:bus_landing_app/const/colors.dart';
import 'package:flutter/material.dart';

class ContainerThree extends StatelessWidget {
  const ContainerThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.kPrimaryBackgroundColor,
      child: Column(children: [
        SizedBox(
          height: 40,
        ),
        Center(
          child: Text(
            '  Top Partners',
            style: TextStyle(fontSize: 28, color: AppColors.primary),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        GridView.count(
          childAspectRatio: (MediaQuery.of(context).size.width > 1200)
              ? 2
              : (MediaQuery.of(context).size.width > 915)
                  ? 2
                  : (MediaQuery.of(context).size.width < 440)
                      ? 1
                      : (MediaQuery.of(context).size.width < 800)
                          ? 1
                          : 3,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: (MediaQuery.of(context).size.width > 1200)
              ? 6
              : (MediaQuery.of(context).size.width > 915)
                  ? 4
                  : (MediaQuery.of(context).size.width < 440)
                      ? 2
                      : 2,
          children: List.generate(8, (index) {
            return Container(
                height: 100,
                width: 120,
                child: Image.asset(
                    'assets/icons/logo' + index.toString() + '.png'));
          }),
        ),
        SizedBox(
          height: 40,
        ),
      ]),
    );
  }
}
