// import 'dart:convert';
//
// import 'package:clinic/loginpage/login_model.dart';
// import 'package:http/http.dart'as http;
// class APIServices{
//   Future<LoginResponseModel> login(LoginRequestModel requestModel)async{
//     String url ='http://localhost:2611/api/auth/login';
//     final response=await http.post(Uri.parse(url),body:requestModel.toJson());
//     if(response.statusCode==200||response.statusCode==400){
//       return LoginResponseModel.fromJson(json.decode(response.body));
//     }else{
//       throw Exception('failed to load data');
//     }
//   }
// }