import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:walking_route/screens/home/home_screen.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class RouteForm extends StatefulWidget {
  const RouteForm({super.key});

  @override
  State<RouteForm> createState() => _RouteFormState();
}

class _RouteFormState extends State<RouteForm> {
  final formKey = GlobalKey<FormState>();
  String routeName = '';
  String description = '';
  String waypointStr = '';
  late File selectedImage;
  var resJson, age;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: this.formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              renderTextFormField(
                label: '길 이름',
                onSaved: (val) {
                  setState(() {
                    routeName = val;
                  });
                },
                validator: (val) {
                  if (val.length < 1) {
                    return '길 이름은 필수사항입니다.';
                  }
                },
              ),
              renderTextFormField(
                label: '설명',
                onSaved: (val) {
                  setState(() {
                    description = val;
                  });
                },
                validator: (val) {
                  if (val.length < 50) {
                    return '설명은 50자 이상 적어주세요!';
                  }
                },
              ),
              renderTextFormField(
                  label: '중간지점',
                  onSaved: (val) {
                    setState(() {
                      waypointStr = val;
                    });
                  },
                  validator: (val) {}),
              FloatingActionButton(
                onPressed: getImage,
                tooltip: 'Increment',
                child: Icon(Icons.add_a_photo),
              ),
              renderButton()
            ],
          ),
        ),
      ),
    );
  }

  renderTextFormField({
    required String label,
    required FormFieldSetter onSaved,
    required FormFieldValidator validator,
  }) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        TextFormField(
          onSaved: onSaved,
          validator: validator,
        ),
        Container(
          height: 16.0,
        )
      ],
    );
  }

  onUploadImage() async {
    var req = http.MultipartRequest(
      'POST',
      Uri.parse("https://walkrouteapi.deta.dev/images"),
    );
    Map<String, String> headers = {"Content-type": "multipart/form-data"};
    req.files.add(
      http.MultipartFile(
        'images',
        selectedImage.readAsBytes().asStream(),
        selectedImage.lengthSync(),
        filename: selectedImage.path.split('/').last,
      ),
    );
    req.headers.addAll(headers);
    print("request: " + req.toString());
    var res = await req.send();
    http.Response response = await http.Response.fromStream(res);
    resJson = jsonDecode(response.body);
    return resJson.toList();
  }

  Future getImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    var imagePath = image?.path ?? '';
    setState(() {
      if (imagePath == '') {
        selectedImage = File(imagePath);
      }
    });
  }

  renderButton() {
    return ElevatedButton(
      onPressed: () async {
        var isValidated = formKey.currentState?.validate();
        print(isValidated);
        if (isValidated == true) {
          var imgRes = onUploadImage();
          var data = {
            'routeName': routeName,
            'routeDescription': description,
            'waypoints': waypointStr.replaceAll(' ', '').split(','),
            'routeImages': imgRes,
          };
          var request = await http.post(
              Uri.parse(
                  'https://walkrouteapi.deta.dev/upload/tester/create/${routeName.replaceAll(' ', '-')}'),
              body: data);
          print(request);
          Navigator.pushNamed(context, HomeScreen.routeName);
        }
      },
      child: const Text(
        '저장하기!',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
