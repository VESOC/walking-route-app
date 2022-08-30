import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class SettingPage extends StatelessWidget {
  // ignore: prefer_const_declarations
  static final String path = 'lib/src/pages/settings/setting_page.dart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('설정'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(children: <Widget>[
                ListTile(
                    title: const Text("계정"),
                    trailing: const Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      //open setting_account
                    }),
                ListTile(
                    title: const Text("앱설정"),
                    trailing: const Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      //
                    }),
                ListTile(
                    title: const Text("정보"),
                    trailing: const Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      //
                    })
              ]),
            )
          ],
        ),
      ),
    );
  }
}
