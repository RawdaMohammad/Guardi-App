import 'dart:convert';

import 'package:guardi_app/services/routes.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class OtpService{
  static Future<http.Response> verifyOtp(
      String email,
      String otp
      )async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    if (token == null) {
      throw Exception('No token found');
    }
    Map data = {
      'email': email,
      'verify_code': otp,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'auth/verify');
    http.Response response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: body,
    );
    print(response.body);
    print(otp);
    if (response.statusCode == 201) {
      return response; // OTP verified successfully
    } else {
      final responseBody = json.decode(response.body);
      final errorMessage = responseBody['error'] ?? 'Failed to verify OTP';
      throw Exception(errorMessage);
    }
  }

  static Future<http.Response> resendCode(
      String email,
      ) async {
      Map data = {
        'email' :email,
      };
      var body = json.encode(data);
      var url = Uri.parse(baseURL + 'auth/resend-code');
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: body,
      );

      if (response.statusCode == 200) {
         return response;
      } else {
        final responseBody = json.decode(response.body);
        final errorMessage = responseBody['error'] ?? 'Failed to resend verification code';
        throw Exception(errorMessage);
      }
  }
}