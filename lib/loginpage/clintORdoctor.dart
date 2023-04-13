import 'package:clinic/functions/clintfunctions.dart';
import 'package:clinic/functions/doctorfunctions.dart';
import 'package:clinic/loginpage/loginclint.dart';
import 'package:clinic/loginpage/logindoctor.dart';
import 'package:clinic/mainPages/overview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../mainPages/contact.dart';

class clintORdoctor extends StatelessWidget {
  const clintORdoctor({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 33),
          child: Opacity(opacity: 0.4, child: Image.asset('asset/masssage.png', ),),
              width: 220.w,
              height: 220.h,
        )
            ,Container(
              margin: EdgeInsets.only(top: 50),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 200,
                      child: Text('Please,',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                    )
                    ,Container(
                      width: 200,
                      child: Text('Select one of them to be able to use.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12)),
                    )
                  ],
                ),
              ),
            )
            ,Container(
              margin: EdgeInsets.only(left: 100,right: 100,top: 25),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(loginclint());
                },
                child: Text('Client',style: TextStyle(fontSize: 17),),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.black26;
                      }
                      return Colors.green;
                    }
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
              ) ,
            )
            ,Container(
              margin: EdgeInsets.only(left: 100,right: 100,top: 15),
              child:ElevatedButton(
                onPressed: () {
                Get.to(logindoctor());
                },
                child: Text('Doctor',style: TextStyle(fontSize: 17),),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.black26;
                      }
                      return Colors.green;
                    }
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
              ) ,
            )
            ,Container(
              margin: EdgeInsets.only(top: 40,left: 10),
              width: 100.w,
              height: 40.w,
              child: ListView(
                children: [
                  Container(
                    child: Text('If you don`t have an account,',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                  )
                  ,Container(
                    child: Text('Press contact to be able to join,',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                  )
                ],
              ),
            )
            ,Container(
              margin: EdgeInsets.only(left: 20,right: 200,top: 5),
              child:ElevatedButton(
                onPressed: () {
                  Get.to(contactus());
                },
                child:Text('contact'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.black26;
                      }
                      return Colors.green;
                    }
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)))),
              ) ,
            )
            ,Container(
              margin: EdgeInsets.only(left: 275,right: 15,top: 70),
              child: Image.asset('asset/sss.png',color: Colors.black54,),
            )
          ],
        ),
      ),
    );
  }
}
