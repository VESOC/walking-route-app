import 'package:flutter/material.dart';
import 'package:walking_route/components/coustom_bottom_nav_bar.dart';
import 'package:walking_route/enums.dart';

import 'components/body.dart';

class NewRouteScreen extends StatelessWidget {
  static String routeName = "/routeadd";
  const NewRouteScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Route'),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.search),
    );
  }
}
