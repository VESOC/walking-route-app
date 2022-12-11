import 'package:flutter/material.dart';
import 'package:walking_route/globals.dart' as globals;

//Date

class Date extends ChangeNotifier {
  static String formattedDate = '2022-12-12';
  String get currentPage => formattedDate;
  String formattedDate1 = formattedDate;

  //page update
  updateCurrentPage(String index1) {
    formattedDate = index1;
    formattedDate1 = formattedDate;
    notifyListeners();
  }

  void changeDate() {
    formattedDate = globals.dateformat;
    formattedDate1 = globals.dateformat;

    notifyListeners();
  }
}

//step
class FmStep extends ChangeNotifier {
  int step = 0;
  int get currentPage => step;

  //page update
  updateCurrentPage(int index) {
    step = index;
    notifyListeners();
  }

  void globalchange() {
    globals.step = step;
    notifyListeners();
  }
  //FmStep({required this.step});
}

class Rstep extends ChangeNotifier {
  int _rstep = 0;
  int get rstep => _rstep;
  void as() {
    String date = globals.dateformat;
    Map date_step = {
      '2022-11-27': 1152,
      '2022-11-28': 1462,
      '2022-11-29': 3161,
      '2022-11-30': 1245,
      '2022-12-01': 1521,
      '2022-12-02': 3156,
      '2022-12-03': 6421,
      '2022-12-04': 1425,
      '2022-12-05': 9643,
      '2022-12-06': 9321,
      '2022-12-07': 1314,
      '2022-12-08': 1156,
      '2022-12-09': 8432,
      '2022-12-10': 3832,
      '2022-12-11': 9994,
      '2022-12-13': 0,
      '2022-12-14': 0,
      '2022-12-15': 0,
      '2022-12-16': 0,
      '2022-12-17': 0,
      '2022-12-18': 0,
      '2022-12-19': 0,
      '2022-12-20': 0,
      '2022-12-21': 0,
      '2022-12-22': 0,
      '2022-12-23': 0,
      '2022-12-24': 0,
      '2022-12-25': 0,
      '2022-12-26': 0,
      '2022-12-27': 0,
      '2022-12-28': 0,
      '2022-12-29': 0,
      '2022-12-30': 0,
    };
    globals.step = date_step[date];
  }
}
