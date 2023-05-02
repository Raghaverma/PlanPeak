import 'package:flutter/material.dart';
import 'home.dart';

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
