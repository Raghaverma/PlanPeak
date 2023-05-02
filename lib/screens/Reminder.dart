
import 'package:flutter/material.dart';

import 'NewReminder.dart';

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
