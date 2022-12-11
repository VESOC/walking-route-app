import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:walking_route/globals.dart' as globals;
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:walking_route/provider/stat_provider.dart';
import 'package:walking_route/screens/statspage/components/pedometer.dart';

class Stats extends StatefulWidget {
  @override
  _Stats createState() => _Stats();
}

class _Stats extends State<Stats> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 10,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[]),
        backgroundColor: Colors.white,
        actions: <Widget>[],
      ),
      body: Stat(),
    );
  }
}

class Stat extends StatefulWidget {
  const Stat({
    Key? key,
  }) : super(key: key);

  @override
  State<Stat> createState() => _StatState();
}

class _StatState extends State<Stat> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String Datenow = DateFormat('yyyy-MM-dd').format(now);
    String date;
    if (Datenow == Provider.of<Date>(context).formattedDate1) {
      date = '2022-12-12';
    } else {
      date = context.watch<Date>().formattedDate1;
      globals.eDafo = date;
    }
    var steppercent = globals.step / 10000;
    var m = globals.step * 0.75;
    var kcal = globals.step * 0.04;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(25, 10, 15, 25),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 1),
              ),
              Text(
                '${date}', //date
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
              ),
              Pedometers(),
              Padding(
                padding: EdgeInsets.only(top: 15),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '0 걸음'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '10000 걸음'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    LinearPercentIndicator(
                      lineHeight: 8.0,
                      percent: steppercent,
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      backgroundColor:
                          Theme.of(context).accentColor.withAlpha(30),
                      progressColor: Theme.of(context).primaryColor,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 25,
                color: Colors.grey[300],
              ),
              Container(
                child: Row(children: <Widget>[
                  Expanded(
                      flex: 3,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '거리',
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: '${m}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' m',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ])),
                          ])),
                  Expanded(
                      flex: 3,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              '칼로리',
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: '${kcal}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: ' kcal',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ]))
                          ]))
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
