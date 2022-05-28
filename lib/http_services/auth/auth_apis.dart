import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


class HttpServices {
  // main api url
  static const String baseUrl = 'https://api.smartht.co.uk/api/';

  // test api
  // test() async {
  //   final res = await http.get(Uri.parse(baseUrl + 'hello'), headers: {
  //     'Content-Type': 'application/json;',
  //   });
  //   print(res.toString());
  //   // Map<String, dynamic> map = json.decode(utf8.decode(res.bodyBytes));
  //   // return map['data'];
  // }

//login
  login(data, context) async {
    final res = await http.post(Uri.parse(baseUrl + 'parentauth/studentLogin'),
        headers: {
          'Accept': 'application/json;',
        },
        body: data);
    final responseData = json.decode(utf8.decode(res.bodyBytes));
    
    if (res.statusCode == 201) {
         print(responseData);
      SharedPreferences preference = await SharedPreferences.getInstance();
      String encodedToken = responseData['token'];
      preference.setString('token', encodedToken);
      return responseData['code'];
   
    } else {
      print(responseData);
      return res.statusCode;
    }
  }




}
