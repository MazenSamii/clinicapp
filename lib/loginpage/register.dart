import 'dart:convert';
import 'dart:io';
import 'package:clinic/mainPages/overview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;

class Register extends StatelessWidget {
  var Fname = TextEditingController();
  var Lname = TextEditingController();
  var gander = TextEditingController();
  var age = TextEditingController();
  // var phone = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image:
                  AssetImage('asset/dispute-and-chargeback-solutions-ns.png'),
              opacity: 100)),
      child: ListView(
        children: [
          Container(
              margin: EdgeInsets.only(top: 0, bottom: 0),
              child: Image.asset(
                'asset/sss.png',
                height: 119.h,
                width: 119.w,
                color: Colors.green,
              )),
          Container(
            child: Center(
              child: Text(
                'Regesteration',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w300),
              ),
            ),
          )
          // ,Container(
          //   // width: 100.w,
          //   height: 60.h,
          //   // child:Image.asset('asset/register.png') ,
          //   // margin: EdgeInsets.only(top: 20),
          // )
          ,
          Container(
            margin: EdgeInsets.only(left: 25, right: 25, top: 15),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(15.5)),
            child: TextField(
              controller: Fname,
              // obscureText: true,
              decoration: InputDecoration(
                hintText: "First name...",
                hintStyle: TextStyle(
                    fontSize: 15.sp, color: Colors.black26, height: 0.5.h)
                // ,suffixIcon:Icon(Icons.remove_red_eye)
                ,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.w, color: Colors.black54),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          )
          // ,Container(
          //   margin: EdgeInsets.only(left: 25,right: 25,top: 20),
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(15.5)
          //   ),
          //   child: TextField(
          //     // obscureText: true,
          //     decoration: InputDecoration(
          //       hintText: "Last name..."
          //       ,hintStyle: TextStyle(fontSize: 15.sp,color: Colors.black26,height: 0.5.h)
          //       // ,suffixIcon:Icon(Icons.remove_red_eye)
          //       ,enabledBorder: OutlineInputBorder(
          //       borderSide: BorderSide(width: 1.w,color: Colors.black54),
          //       borderRadius: BorderRadius.circular(25.0),
          //     ),
          //     ),
          //   ),
          // )
          ,
          Container(
            margin: EdgeInsets.only(left: 25, right: 25, top: 20),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(15.5)),
            child: TextField(
              controller: Lname,
              // obscureText: true,
              decoration: InputDecoration(
                hintText: "Last name...",
                hintStyle: TextStyle(
                    fontSize: 15.sp, color: Colors.black26, height: 0.5.h)
                // ,suffixIcon:Icon(Icons.remove_red_eye)
                ,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.w, color: Colors.black54),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25, top: 20),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(15.5)),
            child: TextField(
              controller: gander,
              // obscureText: true,
              decoration: InputDecoration(
                hintText: "Gender...",
                hintStyle: TextStyle(
                    fontSize: 15.sp, color: Colors.black26, height: 0.5.h)
                // ,suffixIcon:Icon(Icons.remove_red_eye)
                ,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.w, color: Colors.black54),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25, top: 20),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(15.5)),
            child: TextField(
              controller: age,
              // obscureText: true,
              decoration: InputDecoration(
                hintText: "Age...",
                hintStyle: TextStyle(
                    fontSize: 15.sp, color: Colors.black26, height: 0.5.h)
                // ,suffixIcon:Icon(Icons.remove_red_eye)
                ,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.w, color: Colors.black54),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25, top: 20),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(15.5)),
            child: TextField(
              controller: email,
              // obscureText: true,
              decoration: InputDecoration(
                hintText: "E_Mail...",
                hintStyle: TextStyle(
                    fontSize: 15.sp, color: Colors.black26, height: 0.5.h)
                // ,suffixIcon:Icon(Icons.remove_red_eye)
                ,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.w, color: Colors.black54),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25, top: 20),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(15.5)),
            child: TextField(
              controller: password,
              // obscureText: true,
              decoration: InputDecoration(
                hintText: "Password...",
                hintStyle: TextStyle(
                    fontSize: 15.sp, color: Colors.black26, height: 0.5.h)
                // ,suffixIcon:Icon(Icons.remove_red_eye)
                ,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.w, color: Colors.black54),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 65, right: 65, top: 15),
            child: ElevatedButton(
              onPressed: () {

                if(Fname.text==null&&Lname.text==null&&gander.text==null&&age.text==null&&email.text==null&&password.text==null){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Icon(Icons.done,color: Colors.green,size: 50,),
                        content:Text('You`re not allowed to add new account.. '),
                        actions: <Widget>[
                          FlatButton(
                            onPressed: () {
                              Get.offAll(overView());
                            },
                            child: Text('Home'),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Try again'),
                          ),
                        ],
                      );
                    },
                  );
                }
                else{
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Icon(Icons.done,color: Colors.green,size: 50,),
                        content:Text('New account is added Successfully.. '),
                        actions: <Widget>[
                          FlatButton(
                            onPressed: () {
                              Get.offAll(overView());
                            },
                            child: Text('Home'),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('add one more'),
                          ),
                        ],
                      );
                    },
                  );
                }
                register(context);
              },
              child: Text('Done'),
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
          )
        ],
      ),
    ));
  }
  Future<void> register(context) async {
    if (password.text.isNotEmpty && email.text.isNotEmpty) {
      var response = await http.post(
          Uri.parse('https://health-care-xlxw.onrender.com/api/auth/register'),
          headers: {'Content-Type': 'application/json'},
          body:jsonEncode ({
            'firstName': Fname.text,
            'lastName': Lname.text,
            'gander':gander.text,
            'age':age.text,
            'email': email.text,
            'password': password.text
          }));
      Map json = jsonDecode(response.body);
      if (json['isDoctor'] == false) {
        print("======================");
        print(response.body);
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Done..!")));
      } else {
        // print(emailcontroller.text);
        // print(passwordcontroller.text);
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Invalid')));
        print(response.body);
        print(response.statusCode);
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('not allowed')));
    }
  }
}
