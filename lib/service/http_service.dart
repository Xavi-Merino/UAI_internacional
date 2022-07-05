import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:myapp/api/dashboard.dart';
import 'package:myapp/api/welcome.dart';
import 'package:myapp/screens/home/home_screen.dart';

class HttpService {
  static final _client = http.Client();

  static var _loginUrl = Uri.parse('https://easysportweb.herokuapp.com/login/');

  static var _registerUrl = Uri.parse('https://easysportweb.herokuapp.com/register/');

  static login(email, password, context) async {
    http.Response response = await _client.post(_loginUrl, body: {
      "username": email,
      "password": password,
    });

    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      var json = jsonDecode(response.body);

      if (json[0] == 'GOOD') {
        print('devolvió good...');
        await EasyLoading.showSuccess(json[0]);
        await Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      } else {
        EasyLoading.showError(json[0]);
      }
    } else {
      await EasyLoading.showError(
          "Error Code : ${response.statusCode.toString()}");
    }
  }

  static register(email, password, context) async {
    http.Response response = await _client.post(_registerUrl, body: {
      "username": email,
      "password": password,
    });

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      if (json[0] == 'username already exist') {
        await EasyLoading.showError(json[0]);
      } else {
        await EasyLoading.showSuccess(json[0]);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      }
    } else {
      await EasyLoading.showError(
          "Error Code : ${response.statusCode.toString()}");
    }
  }
}