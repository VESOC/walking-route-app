import 'package:flutter/widgets.dart';
import 'package:walking_route/screens/complete_profile/complete_profile_screen.dart';
import 'package:walking_route/screens/details/details_screen.dart';
import 'package:walking_route/screens/forgot_password/forgot_password_screen.dart';
import 'package:walking_route/screens/home/home_screen.dart';

import 'package:walking_route/screens/profile/profile_screen.dart';

import 'package:walking_route/screens/search/search_screen.dart';
import 'package:walking_route/screens/search_results/search_results_screen.dart';
import 'package:walking_route/screens/statspage/stats_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  SearchScreen.routeName: (context) => SearchScreen(),
  SearchResultScreen.routeName: (context) => SearchResultScreen(),
  Statsscreen.routeName: (context) => Statsscreen(),
};
