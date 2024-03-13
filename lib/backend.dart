import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'dart:convert';

// // Example function to make a POST request to fetch QR code image
// Future<String> fetchQRCodeImage(String message) async {
//   final response = await http.post(
//     Uri.parse('http://your-fastapi-backend.com/generate/$message'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode({'message': message}),
//   );
//   if (response.statusCode == 200) {
//     return response.body;
//   } else {
//     print('Failed to fetch QR code image: ${response.reasonPhrase}');
//     return ''; // Return empty string as fallback
//   }
// }

// // Example function to make a GET request (assuming this is for fetching some other data)
// Future<void> fetchData() async {
//   final response =
//       await http.get(Uri.parse('http://your-fastapi-backend.com/api/data'));
//   if (response.statusCode == 200) {
//     // Data successfully fetched
//     print(jsonDecode(response.body));
//   } else {
//     // Handle error
//     print('Failed to fetch data: ${response.reasonPhrase}');
//   }
// }

// Example function to make a POST request to fetch QR code image
// Future<Uint8List?> fetchQRCodeImage(String message) async {
//   final response = await http.post(
//     Uri.parse('http://172.16.97.33:8000/generate/$message'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode({'message': message}),
//   );
//   if (response.statusCode == 200) {
//     return response.bodyBytes;
//   } else {
//     print('Failed to fetch QR code image: ${response.reasonPhrase}');
//     return null;
//   }
// }

Future<Uint8List?> fetchQRCodeImage(String message) async {
  final response = await http.get(
    //replace (172.16.97.33) with the IPV4 address the laptop is connected to
    //connect the laptop and mobile on the same network
    //run python -m uvicorn main:app --host 0.0.0.0 --port 8000 for fast api
    Uri.parse('http://172.16.97.33:8000/generate/$message'),
  );
  if (response.statusCode == 200) {
    return response.bodyBytes;
  } else {
    print('Failed to fetch QR code image: ${response.reasonPhrase}');
    return null;
  }
}
