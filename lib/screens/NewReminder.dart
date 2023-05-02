
import 'package:flutter/material.dart';

import 'Reminder.dart';

class NewReminder extends StatefulWidget {
  const NewReminder({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NewReminderState createState() => _NewReminderState();
}

class _NewReminderState extends State<NewReminder> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _descriptionController = TextEditingController();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

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
