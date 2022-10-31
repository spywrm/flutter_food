import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<void> test() async {
  Uri url = Uri.parse('https://cpsu-test-api.herokuapp.com/foods');
  var result = await http.get(url);
  print(result.body);

  var json = jsonDecode(result.body);
  print(json['status']);
}