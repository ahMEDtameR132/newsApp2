import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiServise {
  final _baseUrl = "https://newsapi.org/";
  final dio = Dio();
  Future<Map<String,dynamic>> get({required String endpoint}) async {
    var response = await dio.get("$_baseUrl$endpoint");
    return response.data;
  }
}
