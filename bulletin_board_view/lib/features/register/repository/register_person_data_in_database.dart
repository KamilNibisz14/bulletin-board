import 'dart:convert';
import 'package:http/http.dart' as http;

import '../domain/entities/personal_data.dart';

class RegisterPersonDataInDatabase{

  Future<String> registerPersonDataInDatabase(Map<String, dynamic> data)async{
    final jsonData = json.encode(data);
    try {
    final response = await http.post(
      Uri.parse('http://10.0.2.2:5000/register'),
      headers: {'Content-Type': 'application/json'},
      body: jsonData,
    );
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "Register Error";
    }
  } catch (error) {
    return "Register Error";
  }

  }
}