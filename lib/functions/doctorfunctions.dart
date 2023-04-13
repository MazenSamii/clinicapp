import 'package:clinic/opinionsANDcomplements/addadv.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../loginpage/register.dart';

class doctorfunction extends StatelessWidget {
  const doctorfunction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: 100,height: 640,
            margin: EdgeInsets.only(left: 20,right: 20,top: 65),
            decoration: BoxDecoration( 
                color: Colors.lightGreen[100],
                borderRadius: BorderRadius.circular(30.5)
            ),
            child: ListView(
              children: [
                Container(
                  child: Image.asset('asset/sss.png',color: Colors.black,),
                  margin: EdgeInsets.only(top: 20,bottom: 10),
                )
                ,Container(
                  margin: EdgeInsets.only(bottom: 10),
                      width: 130.w,
                      height: 140.h,
                  child: Image.asset('asset/masssage.png'),
                )
                ,Container(
                  margin: EdgeInsets.only(top:20,left:12,right: 80),
                  child: Column(
                    children: [
                      Container(
                        child:ElevatedButton(
                          onPressed: () {

                          },
                          child:Row(
                            children: [
                              Icon(Icons.remove_red_eye_outlined,color: Colors.black54,),
                              Container(
                                width: 10,
                              ),
                              Text('show all accounts',style: TextStyle(color: Colors.grey[900]),),
                            ],
                          )
                          ,style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.black26;
                              }
                              return Colors.grey[200];
                            }),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                        ) ,
                      )
                      ,Container(
                        margin: EdgeInsets.only(top: 10),
                        child:ElevatedButton(
                          onPressed: () {
                            Get.to(Register());
                          },
                          child:Row(
                            children: [
                              Icon(Icons.add_chart,color: Colors.black54),
                              Container(
                                width: 10,
                              ),
                              Text('Add new account',style: TextStyle(color: Colors.grey[900])),
                            ],
                          )
                          ,style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.black26;
                              }
                              return Colors.grey[200];
                            }),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                        ) ,
                      )
                      ,Container(
                        margin: EdgeInsets.only(top: 10),
                        child:ElevatedButton(
                          onPressed: () {

                          },
                          child:Row(
                            children: [
                              Icon(Icons.remove_done_sharp,color: Colors.black54),
                              Container(
                                width: 10,
                              ),
                              Text('Remove account',style: TextStyle(color: Colors.grey[900])),
                            ],
                          )
                          ,style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.black26;
                              }
                              return Colors.grey[200];
                            }),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                        ) ,
                      )
                      ,Container(
                        margin: EdgeInsets.only(top: 10),
                        child:ElevatedButton(
                          onPressed: () {
                            Get.to(adv());
                          },
                          child:Row(
                            children: [
                              Icon(Icons.add_chart,color: Colors.black54),
                              Container(
                                width: 10,
                              ),
                              Text('add offer&announcement',style:TextStyle(fontSize: 12,color: Colors.grey[900]),),
                            ],
                          )
                          ,style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.black26;
                              }
                              return Colors.grey[200];
                            }),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                        ) ,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        Container(
    margin: EdgeInsets.only(left: 270,right: 20,top: 10),
    child: Image.asset('asset/sss.png',color: Colors.black,),
    )
        ],
      )
    );
  }
}
