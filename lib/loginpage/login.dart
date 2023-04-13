import 'dart:convert';

import 'package:clinic/functions/doctorfunctions.dart';
import 'package:clinic/loginpage/complementlogin.dart';
import 'package:clinic/loginpage/loginclint.dart';
import 'package:clinic/loginpage/logindoctor.dart';
import 'package:clinic/loginpage/opinionlogin.dart';
import 'package:clinic/mainPages/overview.dart';
import 'package:clinic/models/httpHandeler.dart';
import 'package:clinic/opinionsANDcomplements/addcomplement.dart';
import 'package:clinic/opinionsANDcomplements/addopinion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

import '../functions/clintfunctions.dart';
import '../models/model1.dart';

class login extends StatefulWidget {
  // dynamic x = overView();
  dynamic y ;
  // login(this.x,{this.y});
  int type;
  // 0=d,1=c,2=o,3=Com
  login(this.type);
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.5),
          image: DecorationImage(
              image: AssetImage('asset/login.png'), opacity: 120)),
      child: ListView(
        children: [
          Container(
              margin: EdgeInsets.only(top: 30, bottom: 10),
              child: Image.asset(
                'asset/sss.png',
                height: 119.h,
                width: 119.w,
                color: Colors.green,
              )),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Center(
              child: Text(
                'Login',
                style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w300),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 65),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "E_Mail or phone number",
                  hintStyle: TextStyle(
                      fontSize: 15.sp, color: Colors.black26, height: 0.5),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black54),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                controller: emailcontroller,
              )),
          Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 30),
              decoration: BoxDecoration(
                  // color: Colors.black12,
                  // borderRadius: BorderRadius.circular(15.5)
                  ),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "password",
                  hintStyle: TextStyle(
                      fontSize: 15.sp, color: Colors.black26, height: 0.5),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black54),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                controller: passwordcontroller,
              )),
          Container(
            margin: EdgeInsets.only(left: 55, right: 55, top: 30),
            child: ElevatedButton(
              onPressed: () {
                Ulogin();
              },
              child: Text('login'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black26;
                    }
                    return Colors.green;
                  }),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                top: 30,
              ),
              child: Center(
                child: Text(
                  'Find us..!',
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w300),
                ),
              )),
          Container(
            margin: EdgeInsets.only(left: 90, top: 20),
            child: Center(
              child: Row(
                children: [
                  Container(
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)),
                    child: IconButton(
                      icon: Icon(
                        Icons.facebook,
                        color: Colors.black,
                        size: 35,
                      ),
                      onPressed: () {
                        launch('https://www.facebook.com/synergy.PTC');
                      },
                    ),
                  ),
                  Container(
                    width: 20.w,
                  ),
                  Container(
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)),
                    child: IconButton(
                      icon: Icon(
                        Icons.insert_comment_outlined,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        launch(
                            'https://instagram.com/physio___clinic?igshid=YmMyMTA2M2Y=');
                      },
                    ),
                  ),
                  Container(
                    width: 20.w,
                  ),
                  Container(
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)),
                    child: IconButton(
                      icon: Icon(
                        Icons.call,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        FlutterPhoneDirectCaller.callNumber('01019291595');
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  Map jsonResponse;
  Future<void> Ulogin() async {
    HttpHandler httpHandler=HttpHandler();
    if (passwordcontroller.text.isNotEmpty && emailcontroller.text.isNotEmpty) {
      var response = await http.post(
          Uri.parse('https://health-care-xlxw.onrender.com/api/auth/login'),
          headers: {'Content-Type': 'application/json'},
          body:json.encode ({
            'email':emailcontroller.text,
            'password':passwordcontroller.text
          }));
      jsonResponse = jsonDecode(response.body);
      if (response.statusCode == 200) {
        print(jsonResponse);
        print('${jsonResponse['token']}');
        print(jsonResponse['token']);
        if(widget.type==0){
          Get.to(doctorfunction());
        }
        if(widget.type==1){
          var Udata= httpHandler.fetchData(emailcontroller.text,jsonResponse['token']);
          Get.to(clintfunction( Udata,));
        }
        if(widget.type==2){
          Get.to(addopinion());
        }
        if(widget.type==3){
          Get.to(addcomplement());
        }
      } else {
        print(response.body);
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Invalid')));
        print(response.statusCode);
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('not allowed')));
    }
  }
}
