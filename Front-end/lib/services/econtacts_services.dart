import 'dart:convert';

import 'package:guardi_app/services/routes.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class EmergencyContactService{
  static Future<http.Response> addEmergencyContact(
      String fullName,
      String phoneNumber,
      String relationshipStatus,
      ) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('token');
      print(token);
      if (token == null) {
        throw Exception('No token found');
      }
      Map data = {
        'full_name': fullName,
        'phone_number': phoneNumber,
        'relationship_status': relationshipStatus,
      };
      var body = json.encode(data);
      print(body+'////////////////////////');
      var url = Uri.parse(baseURL + 'emergency-contacts');
      http.Response response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: body,
      );
      print('Token : ${token}');
      print(response.body);
      return response;
  }
}