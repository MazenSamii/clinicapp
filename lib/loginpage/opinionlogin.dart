import 'package:clinic/loginpage/login.dart';
import 'package:clinic/opinionsANDcomplements/addopinion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class opinionlogin extends StatelessWidget {
  const opinionlogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.purple,
      //   title: Text('Login..',style: TextStyle(fontSize: 22.sp),),
      //   shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.only(
      //           bottomLeft: Radius.circular(60.5),
      //       )
      //   ),
      // ),
      body: login(2),
    );
  }
}
