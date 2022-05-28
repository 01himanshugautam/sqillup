import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ChapterServices {
  static const String baseUrl = 'https://api.smartht.co.uk/api/';

  viewAllChapter() async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    var token = preference.getString('token');
    final res = await http.post(Uri.parse(baseUrl + 'viewChapter'), headers: {
      'Accept': 'application/json;',
      'Authorization': 'Bearer $token',
    }, body: {});
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

  viewAllLesson() async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    var token = preference.getString('token');
    final res = await http.post(Uri.parse(baseUrl + 'viewLesson'), headers: {
      'Accept': 'application/json;',
      'Authorization': 'Bearer $token',
    }, body: {});
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
