import 'package:flutter/material.dart';
import 'package:walking_route/screens/new_route/new_route_screen.dart';
import 'package:walking_route/screens/search_results/search_results_screen.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Container(
            width: getProportionateScreenWidth(250),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              onSubmitted: (value) =>
                  {Navigator.pushNamed(context, SearchResultScreen.routeName)},
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20),
                      vertical: getProportionateScreenWidth(9)),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: "주변 산책로 찾기",
                  prefixIcon: const Icon(Icons.search)),
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(40),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, NewRouteScreen.routeName);
                },
                child: Text('+')),
          )
        ],
      ),
    );
  }
}
