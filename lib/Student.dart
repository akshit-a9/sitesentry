import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StudentPage(),
    );
  }
}

class StudentPage extends StatelessWidget {
  const StudentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft, // Aligns text to the left
                child: const Text(
                  'Hello Simran!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Column(
                  children: <Widget>[
                    const Text(
                      'Scan QR Code',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Image(
                      image: AssetImage('assets/QR.jpeg'),
                      height: 200,
                      width: 199,
                    ), // Replace with your asset
                    const SizedBox(height: 16),
                    const Divider(color: Colors.white),
                    const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Your ID',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                    ),
                    const Divider(color: Colors.white),
                    const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Entry Time',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                    ),
                    const Divider(color: Colors.white),
                    const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Exit Time',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                    ),
                  ],
                ),
              ),
              // Add additional elements here if necessary
            ],
          ),
        ),
      ),
    );
  }
}
