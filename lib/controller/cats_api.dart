
import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:pemrograman_mobile/models/cats.dart';

class CatsApi{

  static Future getCats()async{
    Uri url = Uri.parse("https://api.api-ninjas.com/v1/cats?name=a");
    const String key = "BuzeshF237VzCm8TJqY+zg==zWnRXNoXYqTvhZLd";
    const Map<String, String> headers = {"X-Api-key" : key};

    try{
      Response response = await http.get(url, headers: headers);
      print(response.body);

      if(response.statusCode == 200){
        List result = jsonDecode(response.body);
        List<Cat> data = result.map((e) => Cat.fromJson(e)).toList();
        return data;
      }
    }catch (e){
      print(e);
      return "error $e";
    }

  }
}