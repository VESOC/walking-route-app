import 'package:flutter/material.dart';

import 'package:walking_route/screens/statspage/components/body.dart';
import 'package:walking_route/enums.dart';

import '../../components/coustom_bottom_nav_bar.dart';
import '../../size_config.dart';

class Statsscreen extends StatefulWidget {
  static String routeName = "/Calendarscreen";
  @override
  _StatsscreenState createState() => _StatsscreenState();
}

class _StatsscreenState extends State<Statsscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("캘린더"),
        centerTitle: true,
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.calender),
    );
  }
}
