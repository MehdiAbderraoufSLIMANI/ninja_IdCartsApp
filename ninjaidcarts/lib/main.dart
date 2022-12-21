import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _colorAppbar = Color.fromARGB(255, 104, 104, 104);
  var _colorbody = Color.fromARGB(255, 53, 53, 53);
  var _colorbodytext = Color.fromARGB(255, 204, 204, 204);
  String stat = "night";
  void grow() {
    setState(() {
      if (stat == "day") {
        stat = "night";
        _colorAppbar = Color.fromARGB(255, 104, 104, 104);
        _colorbody = Color.fromARGB(255, 53, 53, 53);
        _colorbodytext = Color.fromARGB(255, 204, 204, 204);
      } else if (stat == "night") {
        stat = "day";
        _colorAppbar = Color.fromARGB(255, 255, 138, 138);
        _colorbody = Color.fromARGB(255, 255, 255, 255);
        _colorbodytext = Color.fromARGB(255, 31, 31, 31);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'ID cart',
        )),
        backgroundColor: _colorAppbar,
      ),
      body: Body(_colorbodytext),
      backgroundColor: _colorbody,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          grow();
        },
        child: const Icon(Icons.nightlight),
      ),
    );
  }
}

class Body extends StatelessWidget {
  late Color _colorbodytext;

  // ignore: no_leading_underscores_for_local_identifiers
  Body(Color _colorbodytext, {super.key}) {
    this._colorbodytext = _colorbodytext;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.all(100),
            child: const CircleAvatar(
              backgroundImage: AssetImage(
                "assets/1.jpg",
              ),
              radius: 50,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(25, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Text(
                'NAME',
                style: TextStyle(color: _colorbodytext),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Chun-Li",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'CURRENT NINJA LEVEL',
                style: TextStyle(
                  color: _colorbodytext,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "8",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.mail,
                    color: _colorbodytext,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "chun-li@ninjaTeam.com",
                    style: TextStyle(color: _colorbodytext),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
