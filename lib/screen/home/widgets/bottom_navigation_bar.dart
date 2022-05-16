import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final bottomBarItem = [
    'home',
    'search',
    'chat',
    'notification',
    'home_mark',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 7,
          offset: Offset(0, 3),
        ),
      ]),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: bottomBarItem
              .map((e) => SvgPicture.asset(
                    'assets/icons/$e.svg',
                    color: Theme.of(context).primaryColor,
                  ))
              .toList()),
    );
  }
}
