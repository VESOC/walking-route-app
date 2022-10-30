import 'package:flutter/material.dart';
import 'package:walking_route/models/WalkRoute.dart';

import '../../../../size_config.dart';
import 'search_item.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(10)),
            searchResultView(),
          ],
        ),
      ),
    );
  }
}

Widget searchResultView() {
  final List<WalkRoute> routes; // TODO: get search results
  return Expanded(
    child: ListView.builder(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(8.0),
      itemCount: routes.length,
      itemBuilder: (BuildContext context, int index) {
        return SearchItem(route: routes[index]);
      },
    ),
  );
}
