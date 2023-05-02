

import 'package:flutter/material.dart';

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
