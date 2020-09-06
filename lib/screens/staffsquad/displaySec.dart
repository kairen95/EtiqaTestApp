import 'package:etiqatestapp/models/squad.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DisplaySection extends StatelessWidget {
  static const double _hPad = 32.0;
  static var dataGet = Squad.fetchAll();

  static var series = [
    new charts.Series(
      id: 'Clicks',
      domainFn: (Squad squad, _) => squad.name,
      measureFn: (Squad squad, _) => squad.count,
      colorFn: (Squad squad, _) => squad.color,
      data: dataGet,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        _hPad,
        8.0,
        _hPad,
        8.0,
      ),
      child: Container(
        height: 350.0,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'All Staff Squad\'s Participation',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              ),
            ),
            chartWidget,
          ],
        ),
      ),
    );
  }

  static var chart = new charts.PieChart(
    series,
    animate: true,
    behaviors: [
      new charts.DatumLegend(
        position: charts.BehaviorPosition.end,
        outsideJustification: charts.OutsideJustification.endDrawArea,
        horizontalFirst: false,
        desiredMaxRows: 3,
        cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
        entryTextStyle: charts.TextStyleSpec(
            color: charts.MaterialPalette.gray.shadeDefault,
            fontFamily: 'Georgia',
            fontSize: 8),
      )
    ],
  );
  var chartWidget = new SizedBox(
    height: 200.0,
    child: chart,
  );
  // var chartWidget = new Padding(
  //   padding: new EdgeInsets.all(16.0),
  //   child: new SizedBox(
  //     height: 200.0,
  //     child: chart,
  //   ),
  // );
}
