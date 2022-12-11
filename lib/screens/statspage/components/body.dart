import 'dart:ui';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:walking_route/globals.dart';
import 'package:walking_route/screens/statspage/components/stats.dart';
import 'package:walking_route/screens/statspage/components/calender.dart';
import 'package:walking_route/screens/statspage/stats_screen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Calender(),
            Stat(),
          ],
        ),
      ),
    );
  }
}
