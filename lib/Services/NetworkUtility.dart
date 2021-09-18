import 'dart:io';

import 'package:http/http.dart' as http;
class NetworkUtility{

  Future<http.Response> getData(String url) async{
    http.Response response;
    try{
      response = await http.get(url);
    } catch(e){
      print('Network Service Error: ${e.toString()}');
    }
    return response;

      }

  Future<http.Response> getDataWithAuth(String url, String auth) async{
    http.Response response;
    Map<String,String> headers = {HttpHeaders.authorizationHeader:auth};
    try{
      response = await http.get(url, headers: headers);
    }catch(e){
      print("Network Service Error: ${e.toString()}");
    }
    return response;
  }

  Future<http.Response> postData(String url, String body) async{
    http.Response response;
    Map<String,String> headers = {'Content-Type':'application/json'};
    try{
      response = await http.post(url, headers: headers ,body: body);
    }catch(e){
      print('Network Service Error: ${e.toString()}');
      return response;
    }
    return response;
  }

  Future<http.Response> postDataWithAuth(String url, String body, String auth) async{
    http.Response response;
    Map<String, String> headers = {'Content-Type': 'application/json', HttpHeaders.authorizationHeader:auth};
    try{
      response = await http.post(url, headers: headers, body: body);
    }catch(e){
      print('Network Service Error: ${e.toString()}');
      return response;
    }
    return response;
  }
}