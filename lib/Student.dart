import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/backend.dart';

class StudentPage extends StatefulWidget {
  const StudentPage({Key? key}) : super(key: key);

  @override
  _StudentPageState createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  Uint8List? qrCodeImage;

  @override
  void initState() {
    super.initState();
    _fetchAndSetQRCodeImage();
  }

  Future<void> _fetchAndSetQRCodeImage() async {
    final bytes = await fetchQRCodeImage(generateRandomNumber());
    if (bytes != null) {
      setState(() {
        qrCodeImage = bytes;
      });
    } else {
      print('Failed to fetch QR code image');
    }
  }

  String generateRandomNumber() {
    Random random = Random();
    return (100000 + random.nextInt(900000)).toString();
  }

  @override
  Widget build(BuildContext context) {
    String name = "Simran";
    String uid = "123456";
    String entrytime = "15:00 PM";
    String exittime = "16:30 PM";

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
                  child: Column(
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
                      qrCodeImage != null
                          ? Image.memory(
                              qrCodeImage!,
                              height: 200,
                              width: 200,
                            )
                          : const CircularProgressIndicator(),
                      const SizedBox(height: 16),
                      const Divider(color: Colors.white),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Student ID : $uid",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Divider(color: Colors.white),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Entry time : $entrytime",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Divider(color: Colors.white),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Exit time : $exittime",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Divider(color: Colors.white),
                      const SizedBox(height: 16),
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "generated every 15 seconds",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
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
