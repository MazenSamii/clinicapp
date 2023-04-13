import 'package:clinic/avertesments/back.dart';
import 'package:clinic/avertesments/dry.dart';
import 'package:clinic/avertesments/knee.dart';
import 'package:clinic/avertesments/mom.dart';
import 'package:clinic/loginpage/clintORdoctor.dart';
import 'package:clinic/loginpage/complementlogin.dart';
import 'package:clinic/loginpage/opinionlogin.dart';
import 'package:clinic/mainPages/contact.dart';
import 'package:clinic/opinionsANDcomplements/offers.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../loginpage/login.dart';
import '../loginpage/register.dart';
import '../opinionsANDcomplements/viewcomplement.dart';
import '../opinionsANDcomplements/viewopinion.dart';
import 'location.dart';
class overView extends StatefulWidget {

  @override
  State<overView> createState() => _overViewState();
}

class _overViewState extends State<overView> {
  @override
  // int index=0;
  //
  // List<Widget>screens=[
  //   clintORdoctor(),
  //   contactus(),
  //   location(),
  // ];

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
        title: Text('Synergy Physio',style: TextStyle(fontSize: 20),),

      ),
       drawer: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(0.0),bottom: Radius.circular(40.0)),
          child: Drawer(
            child: Container(
            child: ListView(
              padding: EdgeInsets.only(
                top: 0.0,
              ),
              children: [
                Container(
                  width: 250.w,
                  height: 190.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/pexels-photo-4506073.webp')
                          ,fit: BoxFit.cover
                        ,opacity: 100
                    )
                        ,borderRadius: BorderRadius.circular(25.5)
                  ),
                  margin: EdgeInsets.only(left: 3),
                  child:Row(
                    children: [
                      Container(
                        child: Icon(Icons.person_pin,),
                        margin: EdgeInsets.only(top: 150),
                      )
                      ,Container(
                        width: 3.w,
                      )
                      ,Container(
                        margin: EdgeInsets.only(top: 150),
                        child:Text('SynergyPhysio@hotmail.com',style: TextStyle(fontWeight: FontWeight.w600),) ,
                      )
                    ],
                  ),
                )
                ,ListTile(
                  leading: Icon(Icons.home,color: Colors.green,),
                  title: Text('Home'),
                  onTap: (){
                    Get.to(overView());
                  },
                )
                ,ListTile(
                  leading: Icon(Icons.remove_red_eye_outlined,color: Colors.green,),
                  title: Text('View opinions'),
                  onTap: (){
                   Get.to(viewopinion());
                  },
                )
                ,ListTile(
                  leading: Icon(Icons.add,color: Colors.green,),
                  title: Text('add your opinion'),
                  onTap: (){
                    Get.to(opinionlogin());
                  },
                )
                ,ListTile(
                  leading: Icon(Icons.remove_red_eye_outlined,color: Colors.green,),
                  title: Text('View Complements'),
                  onTap: (){
                    Get.to(viewcomplements());
                  },
                )
                ,ListTile(
                  leading: Icon(Icons.add,color: Colors.green,),
                  title: Text('add complement'),
                  onTap: (){
                    Get.to(complementlogin());
                  },
                )
                ,ListTile(
                  leading: Icon(Icons.location_city,color: Colors.green,),
                  title: Text('Our location'),
                  onTap: (){
                    Get.to(location());
                  },
                )
                ,ListTile(
                  leading: Icon(Icons.contact_phone_outlined,color: Colors.green,),
                  title: Text('contact us'),
                  onTap: (){
                    Get.to(contactus());
                  },
                )
                ,ListTile(
                  leading: Icon(Icons.login,color: Colors.green,),
                  title: Text('Login'),
                  onTap: (){
                    Get.to(clintORdoctor());
                  },
                )
              ],
            ),
          ),
          ),
        )
      ,body:Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('asset/gren.jpg')
              ,fit: BoxFit.cover
            // ,opacity: 50
        )
      ),
        child: ListView(
          children: [
            // Container(
            //   margin: EdgeInsets.only(top: 15),
            //   width: 100.w,height: 220.h,
            //   child:Image.asset('asset/masssage.png') ,
            // )

            Container(
              margin: EdgeInsets.only(top: 10),
              width: 100.w,
              height: 100.h,
              child: Image.asset('asset/Rww.png',color: Colors.grey[700],),
            )
            ,Container(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      child:Text('in Synergy Physio we`re helping you to perform all the required tasks,',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),) ,
                    )
                    ,Container(
                      width: 300,
                      child:Text('and you are constantly followed up by the work team,',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)) ,
                    )
                    ,Container(
                      width: 300,
                      child:Text('so that you are fully aware of the results of your treatment.',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)) ,
                    )
                  ],
                ),
              ),
            )
            ,Container(
              height: 1.h,
              color: Colors.black,
              margin: EdgeInsets.only(top: 10,left: 50,right: 50),
            )
            ,Container(
              margin: EdgeInsets.only(left: 20,top: 10,bottom: 5),
              child: Text('Note!',style: TextStyle(fontSize: 20),),
            )
            ,Container(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      child:Text('Here you will find a group of injuries and how to treat them,',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),) ,
                    )
                    ,Container(
                      width: 300,
                      child:Text('If you have any questions, you can contact us,',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)) ,
                    )
                    ,Container(
                      width: 300,
                      child:Text('and we will respond to you as soon as possible,Thanks.',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)) ,
                    )
                  ],
                ),
              ),
            )
            ,Container(
              height: 190,
              margin: EdgeInsets.only(right: 10,top: 15),
              child:Row(
                children: [
                 Container(
                   margin: EdgeInsets.only(left: 38 ,right: 20),
                   child: ElevatedButton(
                     onPressed: () {
                   Get.to(backpain());
                     },
                     child:Column(
                       children: [
                         Container(
                           height:145,
                           child:ClipRRect(
                             child: Image.asset('asset/backpain.jpg'),
                             borderRadius: BorderRadius.circular(30),
                           ) ,
                         )
                          ,Container(
                           width: 100.w,
                           height: 0.5.h,
                           color: Colors.black,
                           margin: EdgeInsets.only(top: 10,bottom: 5),
                         )
                         ,Text('Back Pain',style: TextStyle(color: Colors.grey[800],fontWeight: FontWeight.w300),),
                       ],
                     )
                     ,style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.resolveWith((states) {
                         if (states.contains(MaterialState.pressed)) {
                           return Colors.black12;
                         }
                         return Colors.white;
                       }),
                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                           RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                   ) ,
                 )
                 ,Container(
                    child: ElevatedButton(
                      onPressed: () {
Get.to(dry());
                      },
                      child:Column(
                        children: [
                          Container(
                            height:145,
                            child:ClipRRect(
                              child: Image.asset('asset/d1.jpg'),
                              borderRadius: BorderRadius.circular(30),
                            ) ,
                          )

                          ,Container(
                            width: 100.w,
                            height: 0.5.h,
                            color: Colors.black,
                            margin: EdgeInsets.only(top: 10,bottom: 5),
                          ),
                          Text('Dry needle uses',style: TextStyle(color: Colors.grey[800],fontWeight: FontWeight.w300),),
                        ],
                      )
                      ,style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.black12;
                          }
                          return Colors.white;
                        }),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                    ) ,
                  )
                ],
              )
            )
            ,Container(
                height: 190,
                margin: EdgeInsets.only(right: 15,top: 15),
                child:Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 38 ,right: 20),
                      child: ElevatedButton(
                        onPressed: () {
Get.to(mom());
                        },
                        child:Column(
                          children: [
                            Container(
                              height:145,
                              child:ClipRRect(
                                child: Image.asset('asset/a1.jpg'),
                                borderRadius: BorderRadius.circular(30),
                              ) ,
                            )
                            ,Container(
                              width: 100.w,
                              height: 0.5.h,
                              color: Colors.black,
                              margin: EdgeInsets.only(top: 10,bottom: 5),
                            ),
                            Text('Pregnant mom',style: TextStyle(color: Colors.grey[800],fontWeight: FontWeight.w300),),
                          ],
                        )
                        ,style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.black12;
                            }
                            return Colors.white;
                          }),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                      ) ,
                    )
                    ,Container(
                      child: ElevatedButton(
                        onPressed: () {
Get.to(knee());
                        },
                        child:Column(
                          children: [
                            Container(
                              height:145,
                              child:ClipRRect(
                                child: Image.asset('asset/k1.jpg'),
                                borderRadius: BorderRadius.circular(30),
                              ) ,
                            )
                            ,Container(
                              width: 100.w,
                              height: 0.5.h,
                              color: Colors.black,
                              margin: EdgeInsets.only(top: 10,bottom: 5),
                            ),
                            Text('Knee Pain',style: TextStyle(color: Colors.grey[800],fontWeight: FontWeight.w300),),
                          ],
                        )
                        ,style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.black12;
                            }
                            return Colors.white;
                          }),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                      ) ,
                    )
                  ],
                )
            )
            ,Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.only(left: 50,right: 50,top: 20),
            )
            ,Container(
              margin: EdgeInsets.only(top: 20),
              width: 150,
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ClipRRect(
                    child: Image.asset('asset/pp1.jpg',width: 150,height: 150,),
                    borderRadius: BorderRadius.circular(30.5),
                  )
                  ,Container(
                    width: 10,
                  )
                  ,ClipRRect(
                    child: Image.asset('asset/pp2.jpg',width: 150,height: 150,),
                    borderRadius: BorderRadius.circular(30.5),
                  )
                  ,Container(
                    width: 10,
                  )
                  ,ClipRRect(
                    child: Image.asset('asset/pp3.jpg',width: 150,height: 150,),
                    borderRadius: BorderRadius.circular(30.5),
                  )
                  ,Container(
                    width: 10,
                  )
                  ,ClipRRect(
                    child: Image.asset('asset/pp4.jpg',width: 150,height: 150,),
                    borderRadius: BorderRadius.circular(30.5),
                  )
                  ,Container(
                    width: 10,
                  )
                  ,ClipRRect(
                    child: Image.asset('asset/pp5.jpg',width: 150,height: 150,),
                    borderRadius: BorderRadius.circular(30.5),
                  )
                  ,Container(
                    width: 10,
                  )
                  ,ClipRRect(
                    child: Image.asset('asset/pp6.jpg',width: 150,height: 150,),
                    borderRadius: BorderRadius.circular(30.5),
                  )
                ],
              ),
            )
            ,Container(
              margin: EdgeInsets.only(top: 20,right: 140,left: 30),
              child:ElevatedButton(
                onPressed: () {
                Get.to(viewoffers());
                },
                child:Row(
                  children: [
                    Icon(Icons.insert_comment,color: Colors.black54),
                    Container(
                      width: 10,
                    ),
                    Text('offers & announcement',style:TextStyle(fontSize: 10,color: Colors.grey[900]),),
                  ],
                )
                ,style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black26;
                    }
                    return Colors.blueGrey[200];
                  }),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
              ) ,
            )
            ,Container(
              margin: EdgeInsets.only(top: 5,right: 140,left: 30),
              child:ElevatedButton(
                onPressed: () {
                  Get.to(clintORdoctor());
                },
                child:Row(
                  children: [
                    Icon(Icons.login_outlined,color: Colors.black54),
                    Container(
                      width: 10,
                    ),
                    Text('Login',style:TextStyle(fontSize: 12,color: Colors.grey[900]),),
                  ],
                )
                ,style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black26;
                    }
                    return Colors.blueGrey[200];
                  }),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
              ) ,
            )
            ,Container(
              margin: EdgeInsets.only(top: 5,right: 140,left: 30),
              child:ElevatedButton(
                onPressed: () {
                    Get.to(contactus());
                },
                child:Row(
                  children: [
                    Icon(Icons.contact_phone_outlined,color: Colors.black54),
                    Container(
                      width: 10,
                    ),
                    Text('Contact us to join',style:TextStyle(fontSize: 12,color: Colors.grey[900]),),
                  ],
                )
                ,style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black26;
                    }
                    return Colors.blueGrey[200];
                  }),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
              ) ,
            )
            ,Container(
              margin: EdgeInsets.only(left: 270,right: 20,top: 0),
              child: Image.asset('asset/sss.png',color: Colors.grey[600],),
            )
          ],
        ),
      )
    //   ,bottomNavigationBar:CurvedNavigationBar(
    //   backgroundColor: Colors.white,
    //   height: 50,
    //   color: Colors.green,
    //   items: [
    //     Icon(Icons.login,color: Colors.white,size: 30.sp,),
    //     Icon(Icons.contact_mail_outlined,color: Colors.white,size: 30.sp,),
    //     Icon(Icons.location_pin,color: Colors.white,size: 30.sp,),
    //   ],
    //   animationDuration: Duration(milliseconds: 300),
    //   onTap:(int x){
    //     setState(() {
    //       index=x;
    //     });
    //     Get.to(screens[index]);
    //   },
    // ) ,

    );
  }
}
