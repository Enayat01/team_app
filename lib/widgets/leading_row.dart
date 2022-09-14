import 'dart:ffi';

import 'package:flutter/material.dart';

import '../config/constants.dart';

Widget leadingRow(
    BuildContext context, String text, text1, text2, text3, text4, text5) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(10),
        // color: Theme.of(context).primaryColor,
        child: Text(
          text,
          style: TextStyle(color: secondaryColor),
        ),
      ),
      Text(
        text1,
        style: TextStyle(color: Theme.of(context).disabledColor),
      ),
      Text(
        text2,
        style: TextStyle(color: Theme.of(context).disabledColor),
      ),
      Text(
        text3,
        style: TextStyle(color: Theme.of(context).disabledColor),
      ),
      Text(
        text4,
        style: TextStyle(color: Theme.of(context).disabledColor),
      ),
      Text(
        text5,
        style: TextStyle(color: Theme.of(context).disabledColor),
      ),
    ],
  );
}

Widget leadingTabBar(
    Color boxColor, double padding, String text, Color textColor) {
  return TabBar(tabs: [
    Tab(
      child: Container(
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.all(padding),
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    )
  ]);
}
