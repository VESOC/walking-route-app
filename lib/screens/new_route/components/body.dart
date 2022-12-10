import 'package:flutter/material.dart';

import '../../../../size_config.dart';
import 'Form.dart';

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
          children: [RouteForm()],
        ),
      ),
    );
  }
}
