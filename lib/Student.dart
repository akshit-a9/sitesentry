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
    String name = "Simran";
    String uid = "123456";
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Hello $name",
                    style: const TextStyle(
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
                      Text(
                        'Scan QR Code',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      Image(
                        image: AssetImage('assets/QR.jpeg'),
                        height: 200,
                        width: 199,
                      ),
                      SizedBox(height: 16),
                      Divider(color: Colors.white),
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your ID',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                      ),
                      Divider(color: Colors.white),
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Entry Time',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                      ),
                      Divider(color: Colors.white),
                      TextField(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
