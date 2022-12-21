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

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('ID cart')),
        backgroundColor: const Color.fromARGB(255, 104, 104, 104),
      ),
      body: const Body(),
      backgroundColor: const Color.fromARGB(255, 53, 53, 53),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.nightlight),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

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
              const Text(
                'NAME',
                style: TextStyle(color: Color.fromARGB(255, 204, 204, 204)),
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
              const Text(
                'CURRENT NINJA LEVEL',
                style: TextStyle(
                  color: Color.fromARGB(255, 204, 204, 204),
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
                  const Icon(
                    Icons.mail,
                    color: Colors.white,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "chun-li@ninjaTeam.com",
                    style: TextStyle(color: Colors.white),
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
