import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'home_header.dart';
import 'special_offers.dart';
import 'package:walking_route/screens/statspage/components/pedometer.dart';
import 'package:walking_route/screens/statspage/components/stats.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            //HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(20)),
            Stat(),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
