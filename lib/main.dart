import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:table_calendar/table_calendar.dart';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

void main() {
  runApp(const MaterialApp(
    home: Login(),
    debugShowCheckedModeBanner: false,
    // backgroundColor: Color.fromARGB(255, 0, 0, 0),
  ));
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          title: const Text('PlanPeak'),
        ),
        body: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // alignment: const FractionalOffset(20.0, 20.0),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image.asset(
                    //alignment: const FractionalOffset(20.0, 20.0),
                    'assets/logo.png',
                    width: 180,
                    height: 180,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: 'Enter Your Email',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: 'Enter Password',
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Start()),
                        );
                      },
                      child: const Text('Login'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()),
                        );
                      },
                      child: const Text('Sign Up'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset(
                  // alignment: const FractionalOffset(20.0, 20.0),
                  'assets/logo.png',
                  width: 180,
                  height: 180,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: 'Enter Your Name',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: 'Enter Your Email',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: 'Enter Password',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: 'Re-nter Password',
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                child: const Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Start createState() => _Start();
}

class _Start extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: const Text('Third Route'),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // alignment: const FractionalOffset(20.0, 20.0),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image.asset(
                    // alignment: const FractionalOffset(20.0, 20.0),
                    'assets/logo.png',
                    width: 180,
                    height: 180,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextButton(
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(50, 50)),
                      foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    child: const Text(
                      'tap!',
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset(
                'assets/logo.png',
                width: 180,
                height: 180,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ViewToDoLists()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Image.asset(
                      'assets/todo.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ViewNotes()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Image.asset(
                      'assets/notes.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Calender()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Image.asset(
                      'assets/calender.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Reminder()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Image.asset(
                      'assets/reminder.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ViewNotes extends StatefulWidget {
  const ViewNotes({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ViewNotes createState() => _ViewNotes();
}

class _ViewNotes extends State<ViewNotes> {
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
                MaterialPageRoute(builder: (context) => const NewNote()),
              );
            },
          ),
        ],
        backgroundColor: Colors.black,
        title: const Text('Notes'),
      ),
      body: const Center(),
    );
  }
}

class NewNote extends StatefulWidget {
  const NewNote({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NewNote createState() => _NewNote();
}

class _NewNote extends State<NewNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Image.asset('assets/save.png'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ViewNotes()),
              );
            },
          ),
        ],
        backgroundColor: Colors.black,
        title: const Text('New Note'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const TextField(
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                hintText: 'Enter title',
                hintStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: const TextField(
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Enter note',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Calender createState() => _Calender();
}

class _Calender extends State<Calender> {
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

class Reminder extends StatefulWidget {
  const Reminder({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Reminder createState() => _Reminder();
}

class _Reminder extends State<Reminder> {
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
                MaterialPageRoute(builder: (context) => const NewReminder()),
              );
            },
          ),
        ],
        backgroundColor: Colors.black,
        title: const Text('Reminder'),
      ),
      body: const Center(),
    );
  }
}

class NewReminder extends StatefulWidget {
  const NewReminder({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NewReminderState createState() => _NewReminderState();
}

class _NewReminderState extends State<NewReminder> {
  // late TextEditingController _titleController;
  // late TextEditingController _descriptionController;

  // @override
  // void initState() {
  //   super.initState();
  //   _titleController = TextEditingController();
  //   _descriptionController = TextEditingController();
  // }

  // @override
  // void dispose() {
  //   _titleController.dispose();
  //   _descriptionController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Image.asset('assets/save.png'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Reminder()),
              );
            },
          ),
        ],
        backgroundColor: Colors.black,
        title: const Text('Add a New Reminder'),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              TextField(
                // controller: _titleController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Reminder Title',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                // controller: _descriptionController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Reminder Description',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
        //       const SizedBox(height: 20),
        //       ElevatedButton(
        //         onPressed: () {
        //           DatePicker.showDateTimePicker(
        //             context,
        //             showTitleActions: true,
        //             onConfirm: (date) {
        //               // Handle the selected date and time
        //             },
        //             currentTime: DateTime.now(),
        //           );
        //         },
        //         child: const Text('Set Reminder Time'),
        //       ),
            ],
          ),
        ),
      ),
    );
  }
}


class ViewToDoLists extends StatefulWidget {
  const ViewToDoLists({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ViewToDoLists createState() => _ViewToDoLists();
}

class _ViewToDoLists extends State<ViewToDoLists> {
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
                MaterialPageRoute(builder: (context) => const NewToDoLists()),
              );
            },
          ),
        ],
        backgroundColor: Colors.black,
        title: const Text('Your To Do Lists'),
      ),
      body: const Center(),
    );
  }
}

class NewToDoLists extends StatefulWidget {
  const NewToDoLists({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NewToDoLists createState() => _NewToDoLists();
}

class _NewToDoLists extends State<NewToDoLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Image.asset('assets/save.png'),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => const NewC()),
              // );
            },
          ),
        ],
        backgroundColor: Colors.black,
        title: const Text('Add To Do Lists'),
      ),
      body: const Center(),
    );
  }
}
