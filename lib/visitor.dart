import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visitor Sign-In',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const VisitorSignIn(),
    );
  }
}

class VisitorSignIn extends StatelessWidget {
  const VisitorSignIn({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Image.asset('assets/dg.png', height: 50), // Replace with your asset
            const SizedBox(height: 20),
            const Text(
              'Sign In With DigiLocker',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter Phone No/ Aadhar',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.purple.shade100,
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter OTP',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.purple.shade100,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
