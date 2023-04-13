import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model1.dart';

class HttpHandler{
  Future<List<Data>> fetchData(var email,var token) async {
    try {
      List<Data>myList=[];
      final response = await http.get(
        Uri.parse('https://health-care-xlxw.onrender.com/api/tasks/?patientEmail=$email'),
        headers: {'token': 'Bearer $token'},
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        for(Map<String, dynamic> d in data){
          for(Map<String,dynamic> c in d['content']){
            Data DData = Data.fromJson(c);
            myList.add(DData);
          }
        }
        print("===============================");
        print("===============================");
        print(data);
        print(myList[0].name);
        return myList;
      } else {
        print('Failed to fetch data: ${response.reasonPhrase}');
      }
    } catch (e) {
      print('Error:$e');
    }
  }
}