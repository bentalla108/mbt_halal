import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

typedef ResSuccess = Future<void> Function(Map<String, dynamic>);
typedef ResFailure = Future<void> Function(dynamic);

class HttpServiceCall {
  // static const String _baseUrl = "http://localhost:3001/api";
  static void get(String endpoint,
      {ResSuccess? withSuccess, ResFailure? failure}) {
    _sendRequest(http.get(Uri.parse(endpoint)), withSuccess, failure);
  }

  static void post(String endpoint, dynamic data,
      {ResSuccess? withSuccess, ResFailure? failure}) {
    _sendRequest(
        http.post(Uri.parse(endpoint),
            headers: {'Content-Type': 'application/json'},
            body: json.encode(data)),
        withSuccess,
        failure);
  }

  static void put(String endpoint, dynamic data,
      {ResSuccess? withSuccess, ResFailure? failure}) {
    _sendRequest(
        http.put(Uri.parse(endpoint),
            headers: {'Content-Type': 'application/json'},
            body: json.encode(data)),
        withSuccess,
        failure);
  }

  static void delete(String endpoint,
      {ResSuccess? withSuccess, ResFailure? failure}) {
    _sendRequest(http.delete(Uri.parse(endpoint)), withSuccess, failure);
  }

  static void _sendRequest(Future<http.Response> futureResponse,
      ResSuccess? withSuccess, ResFailure? failure) {
    futureResponse.then((response) {
      if (kDebugMode) {
        print(response.body);
      }
      try {
        var jsonObj = json.decode(response.body) as Map<String, dynamic>? ?? {};

        if (withSuccess != null) withSuccess(jsonObj);
      } catch (err) {
        if (failure != null) failure(err.toString());
      }
    }).catchError((error) {
      if (failure != null) {
        failure(error.toString());
      }
    });
  }
}
