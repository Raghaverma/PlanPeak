import 'package:flutter/material.dart';

import 'NewToDoLists.dart';

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
