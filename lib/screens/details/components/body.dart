import 'package:flutter/material.dart';
import 'package:walking_route/models/WalkRoute.dart';
import 'package:walking_route/size_config.dart';

import 'route_description.dart';
import 'top_rounded_container.dart';
import 'route_images.dart';

class Body extends StatelessWidget {
  final WalkRoute route;

  const Body({Key? key, required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        RouteImages(route: route),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              RouteDescription(
                route: route,
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
