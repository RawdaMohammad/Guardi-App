import 'dart:io';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http_parser/http_parser.dart';

import 'routes.dart';

class ProfileService{
  static Future<http.Response> getUserProfile()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    if (token == null) {
      throw Exception('No token found');
    }
    var url = Uri.parse(baseURL + 'user-profile');
    var response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );
    return response;
  }
  static Future<http.Response> updateProfile(
      String firstName,
      String lastName,
      String phoneNumber,
      File? profileImage,
      )async{
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('token');
      if (token == null) {
        throw Exception('No token found');
      }
      var request = http.MultipartRequest('POST', Uri.parse(baseURL + 'user-profile/update'));

      request.headers['Authorization'] = 'Bearer $token';

      request.fields['Fname'] = firstName;
      request.fields['Lname'] = lastName;
      request.fields['phone_number'] = phoneNumber;

      if (profileImage != null) {
        final imageFile = profileImage;
        String fileName = imageFile.path.split('/').last;

        request.files.add(await http.MultipartFile.fromPath(
          'profile_image',
          imageFile.path,
          contentType: MediaType('image', 'jpeg'), // Adjust content type if necessary
          filename: fileName,
        ));
      }
      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);
      return response;
  }
}