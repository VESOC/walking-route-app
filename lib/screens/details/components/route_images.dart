import 'package:flutter/material.dart';
import 'package:walking_route/models/WalkRoute.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class RouteImages extends StatefulWidget {
  const RouteImages({
    Key? key,
    required this.route,
  }) : super(key: key);

  final WalkRoute route;

  @override
  _RouteImagesState createState() => _RouteImagesState();
}

class _RouteImagesState extends State<RouteImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag: widget.route.routeName.toString(),
              child: Image.asset(widget.route.routeImages[selectedImage]),
            ),
          ),
        ),
        // SizedBox(height: getProportionateScreenWidth(20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.route.routeImages.length,
                (index) => buildSmallRoutePreview(index)),
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallRoutePreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(8),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: kPrimaryColor.withOpacity(selectedImage == index ? 1 : 0)),
        ),
        child: Image.asset(widget.route.routeImages[index]),
      ),
    );
  }
}
