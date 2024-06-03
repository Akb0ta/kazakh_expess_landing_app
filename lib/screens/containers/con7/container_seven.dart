import 'package:bus_landing_app/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContainerSeven extends StatelessWidget {
  const ContainerSeven({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          (MediaQuery.of(context).size.width < 440)
              ? SizedBox()
              : Container(
                  width: MediaQuery.of(context).size.width / 3.4,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      image: DecorationImage(
                          image: AssetImage('assets/images/background1.png'))),
                ),
          InkWell(
            onTap: () {
              launch("https://www.apple.com/store");
            },
            child: Container(
              width: (MediaQuery.of(context).size.width < 440)
                  ? MediaQuery.of(context).size.width
                  : MediaQuery.of(context).size.width / 3,
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
                  Center(
                    child: Text(
                      'Malesuada ut aliquam at ac est nisi, interdum etiam dignissim.Risus elit et fringilla habitant ut facilisi',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Container(
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
                    ),
                  )
                ]),
              ),
            ),
          ),
          (MediaQuery.of(context).size.width < 440)
              ? SizedBox()
              : Container(
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
