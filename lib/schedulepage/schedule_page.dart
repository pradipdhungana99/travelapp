// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:table_calendar/table_calendar.dart';

// class SchedulePage extends StatefulWidget {
//   const SchedulePage({super.key});

//   @override
//   State<SchedulePage> createState() => _SchedulePageState();
// }

// class _SchedulePageState extends State<SchedulePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Schedule'),
//         leading: IconButton(
//             onPressed: () {
//               context.pop();
//             },
//             icon: Icon(Icons.arrow_back_ios)),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(
//               Icons.notifications_active_outlined,
//               size: 30,
//             ),
//           )
//         ],
//       ),
//       body: Column(
//         children: [
//           TableCalendar(
//             firstDay: DateTime.utc(2010, 10, 16),
//             lastDay: DateTime.utc(2030, 3, 14),
//             focusedDay: DateTime.now(),
//             calendarBuilders: CalendarBuilders(
//               dowBuilder: (context, day) {
//                 if (day.weekday == DateTime.sunday) {
//                   // final text = DateFormat.E().format(day);
//                   final text = '1';

//                   return Center(
//                     child: Text(
//                       text,
//                       style: TextStyle(color: Colors.red),
//                     ),
//                   );
//                 }
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:travel_app/data.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _TableEventsExampleState();
}

class _TableEventsExampleState extends State<SchedulePage> {
  late final ValueNotifier<List<Event>> _selectedEvents;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  @override
  void initState() {
    super.initState();

    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  @override
  void dispose() {
    _selectedEvents.dispose();
    super.dispose();
  }

  List<Event> _getEventsForDay(DateTime day) {
    // Implementation example
    return kEvents[day] ?? [];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
        _rangeStart = null; // Important to clean those
        _rangeEnd = null;
      });

      _selectedEvents.value = _getEventsForDay(selectedDay);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Schedule',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notification_add_outlined,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Card(
            child: TableCalendar<Event>(
              firstDay: kFirstDay,
              lastDay: kLastDay,
              focusedDay: _focusedDay,
              onRangeSelected: null,
              rangeSelectionMode: RangeSelectionMode.disabled,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              rangeStartDay: _rangeStart,
              rangeEndDay: _rangeEnd,
              calendarFormat: CalendarFormat.week,
              startingDayOfWeek: StartingDayOfWeek.monday,
              onDaySelected: _onDaySelected,
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Schedule',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    context.goNamed('popularpage');
                  },
                  child: Text(
                    'View all',
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 400,
            child: ListView.separated(
              itemBuilder: (context, index) =>
                  ScheduleCards(schedule: schedules[index]),
              scrollDirection: Axis.vertical,
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
              itemCount: schedules.length,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        currentIndex: 4,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: 'Calendar'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'Profile',
              backgroundColor: Colors.blueGrey[800])
        ],
      ),
    );
  }
}

class ScheduleCards extends StatelessWidget {
  final Schedule schedule;
  const ScheduleCards({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        child: SingleChildScrollView(
            child: Row(
          spacing: 20,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                schedule.scheduleimage,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Column(
              children: [
                Row(
                  spacing: 10,
                  children: [
                    Icon(Icons.calendar_month_outlined),
                    Text(schedule.scheduledate),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  schedule.scheduletitle,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text(schedule.schedulelocation),
                  ],
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
          ],
        )),
      ),
    );
  }
}
