import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../mainPages/overview.dart';
class addopinion extends StatefulWidget {
  @override
  State<addopinion> createState() => _addopinionState();
}
class _addopinionState extends State<addopinion> {
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  TextEditingController n3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.blueGrey[300],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25.5),
              bottomRight: Radius.circular(25.5),
            )
        ),
        title: Text('     Synergy Physio',style: TextStyle(fontSize: 20),),
      ),
      body: ListView(
        children: [
          Container(
            child: Center(
                child:Column(
                  children: [
                    Container(
                      child:Image.asset('asset/vote.png',scale: 3,color: Colors.blueGrey[300],)
                      ,margin: EdgeInsets.only(top: 15,bottom: 20),
                    )
                    ,Container(
                        margin: EdgeInsets.only(top: 15),
                        child:Text('Add your opinion here..!',)
                    )
                    ,Container(
                      margin: EdgeInsets.only(left: 23,right: 23,top: 30)
                      ,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.5)
                    ),
                      child: TextField(
                        controller: n1,
                        decoration: InputDecoration(
                          hintText: "Your name..."
                          ,hintStyle: TextStyle(fontSize: 15.sp,color: Colors.black26,height: 0.5.h)
                          ,enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.w,color: Colors.black54),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        ),
                      ),
                    )
                    ,Container(
                      margin: EdgeInsets.only(left: 23,right: 23,top: 30)
                      ,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.5)
                    ),
                      child: TextField(
                        controller: n2,
                        decoration: InputDecoration(
                          hintText: "Your injury..."
                          ,hintStyle: TextStyle(fontSize: 15.sp,color: Colors.black26,height: 0.5.h)
                          ,enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.w,color: Colors.black54),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        ),
                      ),
                    )
                    ,Container(
                      margin: EdgeInsets.only(left: 23,right: 23,top: 30)
                      ,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.5)
                    ),
                      child: TextField(
                        controller: n3,
                        decoration: InputDecoration(
                          hintText: "Your opinion..."
                          ,hintStyle: TextStyle(fontSize: 15.sp,color: Colors.black26,height: 0.5)
                          ,enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1,color: Colors.black54),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        ),
                      ),
                    )

                    ,Container(
                      margin: EdgeInsets.only(left: 65,right: 65,top: 30),
                      child:ElevatedButton(
                        onPressed: () {
                          String a= n1.text;
                          String b= n2.text;
                          String c= n3.text;
                          FirebaseFirestore.instance.collection('Opinions').add(
                              <String,dynamic>{
                                "clint_name":a,
                                "clint_injury":b,
                                "opinion":c,
                              }
                          );
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Icon(Icons.done,color: Colors.green,size: 50,),
                                content:Text('Your opinion is added successfully..'),
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
                                    child: Text('Add one more'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text('       Add       '),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.black26;
                              }
                              return Colors.green[400];
                            }),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                      ) ,
                    )
                  ],
                )
            ),
          )
        ],
      )
    //   ,bottomNavigationBar:CurvedNavigationBar(
    //   backgroundColor: Colors.white,
    //   height: 50,
    //   color: Colors.green,
    //   items: [
    //     Icon(Icons.contact_mail_outlined,color: Colors.white,size: 30.sp,),
    //     Icon(Icons.home,color: Colors.white,size: 30.sp,),
    //     Icon(Icons.location_pin,color: Colors.white,size: 30.sp,),
    //   ],
    //   animationDuration: Duration(milliseconds: 300),
    //   onTap:(int x){
    //     setState((){
    //       index=x;
    //       // screens[index];
    //     });
    //     Get.to(screens[index]);
    //   },
    // ),
    );
  }
}
