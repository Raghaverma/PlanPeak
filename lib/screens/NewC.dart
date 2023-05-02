
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class NewC extends StatefulWidget {
  const NewC({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NewC createState() => _NewC();
}

class _NewC extends State<NewC> {
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Image.asset('assets/new.png'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NewC()),
              );
            },
          ),
        ],
        backgroundColor: Colors.black,
        title: const Text('Calendar'),
      ),
      body: TableCalendar(
        calendarFormat: _calendarFormat,
        focusedDay: _focusedDay,
        firstDay: DateTime.utc(2021, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        },
        headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          titleTextStyle: TextStyle(fontSize: 24, color: Colors.white),
          leftChevronIcon: Icon(Icons.chevron_left, color: Colors.white),
          rightChevronIcon: Icon(Icons.chevron_right, color: Colors.white),
        ),
        calendarStyle: CalendarStyle(
          defaultTextStyle: const TextStyle(fontSize: 18, color: Colors.white),
          weekendTextStyle: const TextStyle(fontSize: 18, color: Colors.white),
          outsideTextStyle: const TextStyle(fontSize: 18, color: Colors.grey),
          selectedDecoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
          todayDecoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
