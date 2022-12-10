import 'package:flutter/material.dart';
import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../size_config.dart';
import 'search_field.dart';

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
            SizedBox(height: getProportionateScreenHeight(20)),
            SearchField(),
            SizedBox(height: getProportionateScreenHeight(10)),
            WebView(
              initialUrl:
                  'https://vesoc.github.io/walking-route-page/index.html',
              gestureNavigationEnabled: true,
            ),
          ],
        ),
      ),
    );
  }
}
