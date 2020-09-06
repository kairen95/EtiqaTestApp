import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Squad {
  final String name;
  final double count;
  final charts.Color color;

  Squad(this.name, this.count, Color color)
    : this.color = charts.Color(
            r: color.red, g: color.green, b: color.blue, a: color.alpha);

  static List<Squad> fetchAll() {
    return [
      Squad('1 Squad', 300.0, Colors.lightBlue),
      Squad('2 Squads', 150.0, Colors.lightGreen),
      Squad('3 Squads', 100.0, Colors.green),
      Squad('3+ Squads', 50.0, Colors.green[800]),
      Squad('No Squads', 200.0, Colors.red),
    ];
  }
}
