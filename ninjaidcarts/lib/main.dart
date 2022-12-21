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
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(100),
            child: const CircleAvatar(
              backgroundImage: AssetImage(
                "assets/1.jpg",
              ),
              radius: 50,
            ),
          ),
        ],
      ),
    );
  }
}
