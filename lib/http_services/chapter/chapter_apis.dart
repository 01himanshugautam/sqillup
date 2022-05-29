import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ChapterServices {
  static const String baseUrl = 'https://api.smartht.co.uk/api/';

  viewAllSubjects() async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    var token = preference.getString('token');
    final res = await http.post(Uri.parse(baseUrl + 'viewSubject'), headers: {
      'Accept': 'application/json;',
      'Authorization': 'Bearer $token',
    }, body: {});
    final responseData = json.decode(utf8.decode(res.bodyBytes));
    if (res.statusCode == 200) {
    } else {
      return responseData;
    }
  }

  viewAllChapter(int subjectId) async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    var token = preference.getString('token');
    final res = await http.post(Uri.parse(baseUrl + 'viewChapter'), headers: {
      'Accept': 'application/json;',
      'Authorization': 'Bearer $token',
    }, body: {
      'subject_id': '$subjectId'
    });
    final responseData = json.decode(utf8.decode(res.bodyBytes));
    if (res.statusCode == 200) {
    } else {
      return responseData;
    }
  }

  viewChapter(data) async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    var token = preference.getString('token');
    final res = await http.post(Uri.parse(baseUrl + 'viewChapter'),
        headers: {
          'Accept': 'application/json;',
          'Authorization': 'Bearer $token',
        },
        body: data);
    final responseData = json.decode(utf8.decode(res.bodyBytes));
    if (res.statusCode == 200) {
    } else {
      return responseData;
    }
  }

  viewAllLesson(int subjectId) async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    var token = preference.getString('token');
    final res = await http.post(Uri.parse(baseUrl + 'viewLesson'), headers: {
      'Accept': 'application/json;',
      'Authorization': 'Bearer $token',
    }, body: {
      'subject_id': '$subjectId'
    });
    final responseData = json.decode(utf8.decode(res.bodyBytes));
    if (res.statusCode == 200) {
    } else {
      return responseData;
    }
  }

  viewLesson(data) async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    var token = preference.getString('token');
    final res = await http.post(Uri.parse(baseUrl + 'viewLesson'),
        headers: {
          'Accept': 'application/json;',
          'Authorization': 'Bearer $token',
        },
        body: data);
    final responseData = json.decode(utf8.decode(res.bodyBytes));
    if (res.statusCode == 200) {
    } else {
      return responseData;
    }
  }
}
