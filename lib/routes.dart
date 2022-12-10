import 'package:flutter/widgets.dart';
import 'package:walking_route/screens/complete_profile/complete_profile_screen.dart';
import 'package:walking_route/screens/details/details_screen.dart';
import 'package:walking_route/screens/forgot_password/forgot_password_screen.dart';
import 'package:walking_route/screens/home/home_screen.dart';
import 'package:walking_route/screens/login_success/login_success_screen.dart';
import 'package:walking_route/screens/otp/otp_screen.dart';
import 'package:walking_route/screens/profile/profile_screen.dart';
import 'package:walking_route/screens/sign_in/sign_in_screen.dart';
import 'package:walking_route/screens/splash/splash_screen.dart';
import 'package:walking_route/screens/search/search_screen.dart';
import 'package:walking_route/screens/search_results/search_results_screen.dart';
import 'package:walking_route/screens/new_route/new_route_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  SearchScreen.routeName: (context) => SearchScreen(),
  NewRouteScreen.routeName: (context) => NewRouteScreen(),
  SearchResultScreen.routeName: (context) => SearchResultScreen(),
};
