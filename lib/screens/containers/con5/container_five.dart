import 'package:bus_landing_app/const/colors.dart';
import 'package:bus_landing_app/widgets/textfields/custom_textfiled.dart';
import 'package:flutter/material.dart';

class ContainerFive extends StatefulWidget {
  const ContainerFive({super.key});

  @override
  State<ContainerFive> createState() => _ContainerFiveState();
}

class _ContainerFiveState extends State<ContainerFive> {
  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController message = TextEditingController();
    double width = MediaQuery.of(context).size.width;
    print(width);
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(
          top: 40,
          bottom: 40,
          right: (width > 400) ? 60 : 20,
          left: (width > 400) ? 60 : 20),
      color: AppColors.kPrimaryWhite,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: (width > 700)
                ? MediaQuery.of(context).size.width / 3
                : MediaQuery.of(context).size.width / 1.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Contact us',
                    style: TextStyle(fontSize: 28, color: AppColors.primary),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Subscribe to get information, latest news and other interesting offers about Kazakh Express. Start now and get the best services.',
                  style: TextStyle(
                    fontSize: (width > 500) ? 22 : 14,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'We are here for you! How can we help?',
                  style: TextStyle(
                    fontSize: (width > 500) ? 22 : 14,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(hintText: 'Name', controller: name),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(hintText: 'Email', controller: email),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(hintText: 'Message', controller: message),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 140,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(color: AppColors.kPrimaryWhite),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 100,
          ),
          (width > 700)
              ? Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Center(
                    child: Image.asset(
                      'assets/images/contact.png',
                      width: 400,
                    ),
                  ),
                )
              : SizedBox()
        ],
      ),
    );
  }
}