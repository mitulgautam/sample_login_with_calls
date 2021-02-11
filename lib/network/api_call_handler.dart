import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:orthodentist/widgets/alerts.dart';

class ApiCallHandler {
  static post(GlobalKey scaffoldState, String url, String body,
      Map<String, String> headers) async {
    print("ApiCallHandler Called: POST: ${url}");
    showLoading(scaffoldState);
    try {
      http.Response response =
          await http.post(url, body: body, headers: headers ?? null);
      Navigator.pop(scaffoldState.currentContext);
      if (response.statusCode == 200 || response.statusCode == 201) {
        showSuccessResponse(scaffoldState, "This is success");
      } else {
        showErrorResponse(scaffoldState,
            "This is error. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      showErrorResponse(
          scaffoldState, "Some error occurred while calling API. ${e}");
    }
  }

  static get(
      GlobalKey scaffoldState, String url, Map<String, String> headers) async {
    print("ApiCallHandler Called: GET: ${url}");
    showLoading(scaffoldState);
    try {
      http.Response response = await http.get(url, headers: headers ?? null);
      Navigator.pop(scaffoldState.currentContext);
      if (response.statusCode == 200 || response.statusCode == 201) {
        showSuccessResponse(scaffoldState, "This is success");
      } else {
        showErrorResponse(scaffoldState,
            "This is error. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      showErrorResponse(
          scaffoldState, "Some error occurred while calling API. ${e}");
    }
  }

  static put() {}

  static delete() {}
}
