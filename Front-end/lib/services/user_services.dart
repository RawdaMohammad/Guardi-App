import 'dart:convert';

import 'package:guardi_app/services/routes.dart';
import 'package:http/http.dart' as http;

class UserServices {
  static Future<http.Response> SignUp(
      String Fname,
    String Lname,
    String gender,
    String email,
    String dateofbirth,
    String phone_number,
    String password) async {
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
    var url = Uri.parse(baseURL + 'auth/register');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
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
    print(response.body);
    return response;
  }
}
  

