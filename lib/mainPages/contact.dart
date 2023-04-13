import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import 'location.dart';
import 'overview.dart';

class contactus extends StatelessWidget {
  const contactus({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child:  ListView(
          children: [
          Stack(
            children: [
              Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[200],
                        borderRadius: BorderRadius.circular(20.5)
                    ),
                width: 500.w,
                height: 300.h,
                    child: Image.asset('asset/sss.png',color: Colors.grey[800],),
              )
              )
              ,Positioned(
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                        borderRadius: BorderRadius.circular(80)
                      ),
                      width: 140.w,
                      height: 140.h,
                      child: Image.asset('asset/physician-assistants-credential-evaluation.png'),
                      margin: EdgeInsets.only(top: 260),
                    ),
              ))
            ],
          )
            ,Container(
              margin: EdgeInsets.only(top: 40),
              child:Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          color: Colors.green,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: IconButton(
                        icon: Icon(Icons.facebook,color: Colors.black,size: 35,),
                        onPressed: (){
                      launch('https://www.facebook.com/synergy.PTC');
                        },
                      ),
                    )
                    ,Container(
                      width: 20.w,
                    )
                    ,Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: IconButton(
                        icon: Icon(Icons.insert_comment_outlined,color: Colors.black,),
                        onPressed: (){
                          launch('https://instagram.com/physio___clinic?igshid=YmMyMTA2M2Y=');
                        },
                      ),
                    )
                    ,Container(
                      width: 20.w,
                    )
                    ,Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: IconButton(
                        icon: Icon(Icons.call,color: Colors.black,),
                        onPressed: (){
                        FlutterPhoneDirectCaller.callNumber('01019291595');
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
            ,Container(
              margin: EdgeInsets.only(left: 100,right: 100,top: 40),
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(50)
              ),
                child:Center(
                  child: TextButton(onPressed: () {
                    Get.to(location());
                  },
                  child: Text('OUR LOCATION',style: TextStyle(color: Colors.black),),),
                )
            )
            ,Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                borderRadius: BorderRadius.circular(30.5)
              ),
              margin: EdgeInsets.only(left:20,right: 250,top: 70),
              child: IconButton(
                onPressed: (){
                  Get.back(result: overView());
                },
                icon: Icon(Icons.home_work_outlined,color: Colors.grey[900],size: 30,),
              ),
            )
    ,Container(
    margin: EdgeInsets.only(left: 270,right: 20,top: 0),
              child: Image.asset('asset/sss.png',color: Colors.grey[700],),
            )
          ],
        ),
      )

    );
  }
}

