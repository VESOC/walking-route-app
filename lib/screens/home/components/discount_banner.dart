import 'package:flutter/material.dart';
import 'package:walking_route/screens/statspage/components/stats.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stats());
  }
}
