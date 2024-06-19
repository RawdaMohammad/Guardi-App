import 'dart:convert';

import 'package:guardi_app/services/routes.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class UserServices {
  static Future<http.Response> SignUp(
      String Fname,
      String Lname,
      String gender,
      String email,
      String dateofbirth,
      String phone_number,
      String password
      ) async {
    Map data = {
      'Fname': Fname,
      'Lname': Lname,
      'gender': gender,
      'email': email,
      'dateofbirth': dateofbirth,
      'phone_number': phone_number,
      'password': password,
    };
    var body = json.encode(data);
    print(body+'88888888888888888888');
    var url = Uri.parse(baseURL + 'auth/register');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    if (response.statusCode == 201) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      String token = responseData['token'];
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', token);
      print(token);
      print(prefs);
    }
    print(response.statusCode);
    return response;
  }

  static Future<http.Response> login(String email, String password) async {
    Map data = {
      "email": email,
      "password": password,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'auth/login');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      String token = responseData['token']; // Make sure the response contains the token

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('email', email);
      prefs.setString('password', password);
      prefs.setString('token', token); // Save the token in SharedPreferences
    }
    print(response.body);
    return response;
  }

  Future<String?> getAuthToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }
}

