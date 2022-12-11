import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';
import 'package:walking_route/provider/stat_provider.dart';
import 'package:walking_route/routes.dart';
import 'package:walking_route/screens/home/home_screen.dart';
import 'package:walking_route/theme.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (BuildContext context) => FmStep()),
          ChangeNotifierProvider(create: (BuildContext context) => Date()),
          ChangeNotifierProvider(create: (BuildContext context) => Rstep())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: theme(),
          home: HomeScreen(),
          // We use routeName so that we dont need to remember the name
          //initialRoute: HomeScreen.routeName,
          routes: routes,
        ));
  }
}
