import 'package:bus_landing_app/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContainerOne extends StatefulWidget {
  const ContainerOne({super.key});

  @override
  State<ContainerOne> createState() => _ContainerOneState();
}

class _ContainerOneState extends State<ContainerOne> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
          top: 40,
          bottom: 40,
          right: (width > 440) ? 10 : 20,
          left: (width > 440) ? 10 : 20),
      color: AppColors.primary,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2.1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Journey of Exploration Begins Here!',
                  style: TextStyle(
                    fontSize: (width > 500) ? 48 : 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Easy purchase of tickets for intercity buses in Kazakhstan',
                  style: TextStyle(
                    fontSize: (width > 500) ? 22 : 14,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    launch("https://www.apple.com/store");
                  },
                  child: Container(
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        "Download App",
                        style: TextStyle(color: AppColors.primary),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2.1,
            child: Center(
              child: Image.asset('assets/images/map.png'),
            ),
          )
        ],
      ),
    );
  }
}
