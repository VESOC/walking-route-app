import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

import 'package:walking_route/globals.dart' as globals;
import 'package:pedometer/pedometer.dart';
import 'package:provider/provider.dart';
import 'package:walking_route/provider/stat_provider.dart';

String formatDate(DateTime d) {
  return d.toString().substring(0, 19);
}

class Pedometers extends StatefulWidget {
  @override
  _PedometerState createState() => _PedometerState();
}

class _PedometerState extends State<Pedometers> {
  late Stream<StepCount> _stepCountStream;
  String _steps = '0';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  void onStepCount(StepCount event) {
    print(event);
    setState(() {
      _steps = event.steps.toString();
      Provider.of<FmStep>(context, listen: false).step = event.steps;
    });
  }

  void onStepCountError(error) {
    print('onStepCountError: $error');
    setState(() {
      _steps = '오류';
    });
  }

  void initPlatformState() {
    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount).onError(onStepCountError);

    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String Datenow = DateFormat('yyyy-MM-dd').format(now);
    String fmstep = Provider.of<FmStep>(context).step.toString();
    if (context.watch<Date>().formattedDate1 != '2022-12-12') {
      _steps = globals.step.toString();
    } else {
      _steps = fmstep;
      globals.step = Provider.of<FmStep>(context).step;
    }
    return Text(
      '${_steps}', //step count
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 75,
        fontFamily: 'Bebas',
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
