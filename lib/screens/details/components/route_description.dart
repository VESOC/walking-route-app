import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walking_route/models/WalkRoute.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class RouteDescription extends StatelessWidget {
  const RouteDescription({
    Key? key,
    required this.route,
  }) : super(key: key);

  final WalkRoute route;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            route.routeName,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(
            route.routeDescription,
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
