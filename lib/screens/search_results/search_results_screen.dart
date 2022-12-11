import 'package:flutter/material.dart';
import 'package:walking_route/components/coustom_bottom_nav_bar.dart';
import 'package:walking_route/enums.dart';

import 'components/body.dart';

class SearchResultScreen extends StatelessWidget {
  static String routeName = "/search_result";
  const SearchResultScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get From Provider'),
        centerTitle: true,
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.search),
    );
  }
}
