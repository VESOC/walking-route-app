import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walking_route/main.dart';

import 'dart:math';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../constants.dart';

class Stats extends StatefulWidget {
  @override
  _Stats createState() => _Stats();
}

class _Stats extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 10,
        backgroundColor: Colors.white,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[]),
        actions: <Widget>[
          FlatButton(
              onPressed: () {},
              child: Stack(clipBehavior: Clip.none, children: <Widget>[
                Container(
                  width: 50,
                  child: Icon(
                    Icons.notifications,
                    size: 35,
                  ),
                ),
                Positioned(
                    top: 0,
                    right: 0,
                    width: 20,
                    height: 20,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.red,
                        ),
                        width: 20,
                        height: 20,
                        child: Center(
                          child: Text(
                            '03',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 9,
                            ),
                          ),
                        )))
              ]))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(25, 30, 25, 25),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 70,
                  height: 70,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Theme.of(context).primaryColor.withAlpha(50),
                  ),
                  child: Icon(Icons.directions_walk),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                Text(
                  '3423',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 80,
                    fontFamily: 'Bebas',
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                            '9000 걸음'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      LinearPercentIndicator(
                        lineHeight: 8.0,
                        percent: 0.34,
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
                                    text: '250',
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
                                    text: '250',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    )),
                                TextSpan(
                                    text: ' cal',
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
      ),
    );
  }
}
