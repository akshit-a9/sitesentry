import 'package:flutter/material.dart';
import 'visitor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView( // Enable scrolling
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Container(
                height: 225, // Adjust this height as needed
                width: 950,
                decoration: const BoxDecoration(
                  color: Color(0xff1460D1), // The fill color of the container.
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200), // This radius should be half of the width.
                    bottomRight: Radius.circular(200), // This radius should be half of the width.
                  ),
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/logo.png'),
                        height: 113,
                        width: 113,
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Welcome',
                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            const SizedBox(height: 20), // Correctly placed SizedBox for spacing
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  DropdownButtonFormField<String>(
                    isDense: true, // This makes the dropdown smaller
                    decoration: InputDecoration(
                      labelText: 'Type', // This adds a label above the dropdown
                      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8), // Adjust the padding to change size
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      // Add drop shadow to the dropdown field
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    value: 'Student',
                    onChanged: (String? newValue) {},
                    items: <String>['Student', 'Faculty', 'Security', 'Admin']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        alignment: Alignment.center, // Centers the text in the dropdown menu
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Roll No./ Emp ID',
                      hintStyle: TextStyle(color: Color(0xff1460D1)),
                      border: InputBorder.none, // Removes the outline border
                      enabledBorder: OutlineInputBorder( // Normal state border
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder( // Focused state border
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Color(0xffC2E5FF),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff5BBAFF), // Use fillColor here
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 5), // Changes position of shadow
                        ),
                      ],
                    ),
                    child: TextFormField(
                      obscureText: true, // Makes it a password field
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Color(0xffFFFFFF)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0xff5BBAFF), // Ensure this matches the container's color
                        // Do not apply boxShadow here
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shadowColor: Colors.grey, // Shadow color
                      elevation: 6, // Shadow elevation
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text('Or'),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const VisitorSignInScreen()),
                      );
                    },
                    child: const Text(
                        'I am a visitor',
                        style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shadowColor: Colors.grey, // Shadow color
                      elevation: 6, // Shadow elevation
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

