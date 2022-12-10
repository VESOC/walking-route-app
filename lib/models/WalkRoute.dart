class WalkRoute {
  final String routeName, routeDescription;
  final List<Coord> routeCoordinates;
  final List<String> routeImages;
  final List<WayPoint> routeWayPoints;
  final String uploader;
  final int likes;
  final bool isLiked;

  WalkRoute({
    required this.routeName,
    required this.routeDescription,
    required this.routeCoordinates,
    required this.routeImages,
    required this.routeWayPoints,
    required this.uploader,
    this.likes = 0,
    this.isLiked = false,
  });
}

class WayPoint {
  final String pointName, pointDescription;
  final Coord pointCoordinates;
  final String pointImage;
  final int likes;

  WayPoint({
    required this.pointName,
    required this.pointDescription,
    required this.pointCoordinates,
    required this.pointImage,
    this.likes = 0,
  });
}

class Coord {
  final double lat, long;

  Coord({
    required this.lat,
    required this.long,
  });
}
