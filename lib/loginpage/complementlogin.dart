import 'package:clinic/loginpage/login.dart';
import 'package:clinic/opinionsANDcomplements/addcomplement.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class complementlogin extends StatelessWidget {
  const complementlogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.purple,
      //   title: Text('Login..',style: TextStyle(fontSize: 22.sp),),
      //   shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.only(
      //           bottomLeft: Radius.circular(60.5),
      //           // bottomRight: Radius.circular(25.5)
      //       )
      //   ),
      // ),
      body: login(3),
    );
  }
}
