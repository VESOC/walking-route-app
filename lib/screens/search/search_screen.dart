import 'package:flutter/material.dart';
import 'package:walking_route/components/coustom_bottom_nav_bar.dart';
import 'package:walking_route/enums.dart';

import 'components/body.dart';

class SearchScreen extends StatelessWidget {
  static String routeName = "/search";
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar:
          CustomBottomNavBar(selectedMenu: MenuState.favourite),
    );
  }
}
