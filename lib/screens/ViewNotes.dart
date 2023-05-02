// ignore: file_names
import 'package:flutter/material.dart';
import 'NewNotes.dart';

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
