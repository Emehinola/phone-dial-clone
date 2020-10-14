import 'package:flutter/material.dart';

// this models defines the call histories available

class CallHistory {
  final String number;
  final String name;
  final String type;
  final String date;
  final String time;

  CallHistory(
      {@required this.number,
      this.name,
      @required this.type,
      @required this.date,
      @required this.time});
}
