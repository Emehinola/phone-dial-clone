import 'package:flutter/material.dart';

Widget contactAvartar(Color color) {
  return Container(
    decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    child: Icon(
      Icons.person,
      size: 35,
      color: Colors.grey[350],
    ),
    padding: EdgeInsets.all(5),
    height: 45,
    width: 45,
  );
}

// creating custom call type here
Widget callType(IconData icon, Color color, Color bg) {
  return Container(
    height: 15,
    width: 14,
    decoration: BoxDecoration(shape: BoxShape.circle, color: bg),
    child: Icon(
      icon,
      size: 15,
      color: color,
    ),
    padding: bg == Colors.red
        ? EdgeInsets.only(bottom: 2, left: 1)
        : EdgeInsets.only(top: 1),
  );
}

Widget sim(String simType) {
  return Container(
    height: 14,
    width: 12,
    padding: EdgeInsets.all(1),
    decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(topRight: Radius.circular(8)),
        color: Colors.grey[300]),
    child: Text(
      simType,
      style: TextStyle(color: Colors.white),
    ),
  );
}
