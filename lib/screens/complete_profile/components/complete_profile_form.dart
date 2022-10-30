import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walking_route/components/custom_surfix_icon.dart';
import 'package:walking_route/components/default_button.dart';
import 'package:walking_route/components/form_error.dart';
import 'package:walking_route/screens/otp/otp_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String?> errors = [];
  String? NickName;
  String? Location;
  String? phoneNumber;
  String? address;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildNickNameFormField(),
          SizedBox(height: getProportionateScreenHeight(10)),
          buildLocationFormField(context, "지역"),
          SizedBox(height: getProportionateScreenHeight(10)),
          buildMyrouteFormField(context, "내 루트"),
          SizedBox(height: getProportionateScreenHeight(10)),
          buildPreferredregionFormField(context, "선호하는 지역"),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: "설정 저장",
            press: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, OtpScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextField buildNickNameFormField() {
    return const TextField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(bottom: 3),
          labelText: "닉네임",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: " 닉네임을 입력해주세요.",
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          ),
    );
  }
}

GestureDetector buildLocationFormField(BuildContext context, String title) {
  return GestureDetector(
      onTap: () {},
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600])),
              Icon(Icons.keyboard_arrow_down, color: Colors.grey)
            ],
          )));
}

GestureDetector buildMyrouteFormField(BuildContext context, String title) {
  return GestureDetector(
      onTap: () {},
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600])),
              Icon(Icons.keyboard_arrow_right, color: Colors.grey)
            ],
          )));
}

GestureDetector buildPreferredregionFormField(
    BuildContext context, String title) {
  return GestureDetector(
      onTap: () {},
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600])),
              Icon(Icons.keyboard_arrow_right, color: Colors.grey)
            ],
          )));
}
