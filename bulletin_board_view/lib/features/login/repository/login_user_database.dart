import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginUserDatabase{

  Future<String> loginUserDatabase(Map<String, dynamic> data)async{
    final jsonData = json.encode(data);
    try {
    final response = await http.post(
      Uri.parse('http://10.0.2.2:5000/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonData,
    );
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "Login Error";
    }
  } catch (error) {
    return "Login Error";
  }

  }
}