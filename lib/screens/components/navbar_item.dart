import 'package:bus_landing_app/main.dart';
import 'package:flutter/material.dart';

class NavBarItem extends StatefulWidget {
  final String text;

  NavBarItem({
    required this.text,
  });

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    Color selected = width > 800 ? Colors.grey[600]! : Colors.white;
    Color notSelected = width > 800 ? Colors.grey[600]! : Colors.white;
    Color color = width > 800 ? Colors.grey[600]! : Colors.white;
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          color = notSelected;
        });
      },
      onExit: (value) {
        setState(() {
          color = notSelected;
        });
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () {},
          child: Container(
            height: 60.0,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              widget.text,
              style: TextStyle(
                fontSize: 16.0,
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
