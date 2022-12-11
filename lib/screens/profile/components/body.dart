import 'package:flutter/material.dart';
import 'package:walking_route/screens/statspage/components/stats.dart';
import 'package:walking_route/screens/complete_profile/complete_profile_screen.dart';
import 'package:walking_route/screens/statspage/stats_screen.dart';
import 'package:walking_route/screens/statspage/components/pedometer.dart';

import 'menu_screen.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "계정",
            icon: "assets/icons/User Icon.svg",
            press: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => CompleteProfileScreen())))
            },
          ),
          ProfileMenu(
            text: "소개",
            icon: "assets/icons/Question mark.svg",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingScreen()));
            },
          ),
          ProfileMenu(
            text: "서드파티",
            icon: "assets/icons/Discover.svg",
            press: () {
              // Navigator.push(context,
              // MaterialPageRoute(builder: ((context) => Pedometers())));
            },
          ),
        ],
      ),
    );
  }
}
