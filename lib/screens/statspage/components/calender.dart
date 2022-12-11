import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:walking_route/provider/stat_provider.dart';
import 'package:walking_route/globals.dart' as globals;

class Calender extends StatefulWidget {
  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Consumer<Date>(
        builder: (context, value, child) => TableCalendar(
              locale: 'ko_KR',
              availableCalendarFormats: const {
                CalendarFormat.month: '월',
                CalendarFormat.week: '주',
              },
              focusedDay: DateTime.now(),
              firstDay: DateTime(2020),
              lastDay: DateTime(2120),
              calendarFormat: format,
              startingDayOfWeek: StartingDayOfWeek.sunday,

              //Day Changed
              onDaySelected: (DateTime selectDay, DateTime focusDay) {
                String FmDate = DateFormat('yyyy-MM-dd').format(selectDay);
                setState(() {
                  selectedDay = selectDay;
                  focusedDay = focusDay;
                  FmDate = DateFormat('yyyy-MM-dd').format(selectedDay);
                  globals.dateformat = FmDate;
                  context.read<Date>().changeDate();
                });
                DateTime now = DateTime.now();
                String Datenow = DateFormat('yyyy-MM-dd').format(now);
                String amDate = DateFormat('yyyy-MM-dd').format(selectDay);
                if (amDate != '2022-12-12') {
                  Provider.of<Rstep>(context, listen: false).as();
                } else {
                  context.read<FmStep>().globalchange();
                }
              },
              selectedDayPredicate: (DateTime date) {
                return isSameDay(selectedDay, date);
              },

              //To style the Calendar
              calendarStyle: CalendarStyle(
                  isTodayHighlighted: true,
                  selectedDecoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle,
                  ),
                  selectedTextStyle: TextStyle(color: Colors.white),
                  todayDecoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    shape: BoxShape.rectangle,
                  )),
            ));
  }
}
