import 'package:flutter/material.dart';

import '../../models/WalkRoute.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final RouteDetailsArguments args =
        ModalRoute.of(context)!.settings.arguments as RouteDetailsArguments;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(route: args.route),
      ),
      body: Body(route: args.route),
    );
  }
}

class RouteDetailsArguments {
  final WalkRoute route;

  RouteDetailsArguments({required this.route});
}
