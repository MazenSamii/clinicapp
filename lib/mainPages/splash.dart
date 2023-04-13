import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
// import 'package:toast/toast.dart';
import 'overview.dart';
class splashScreen extends StatelessWidget {
  const splashScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
     body: Container(
       child:ListView(
         children: [
           Container(
             margin: EdgeInsets.only(top: 40),
             child: Opacity(opacity: 0.4, child: Image.asset('asset/masssage.png', ),),
           )
           ,Container(
             margin: EdgeInsets.only(top: 35),
             width: 90.w,
             height: 90.h,
             child: Image.asset('asset/Rww.png',color: Colors.grey[700],),
           )
           ,Container(
             child: Center(
               child: Column(
                 children: [
                   Container(
                     width: 300,
                     child:Text('in Synergy Physio we`re helping you to perform all the required tasks,',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),) ,
                   )
                   ,Container(
                     width: 300,
                     child:Text('and you are constantly followed up by the work team,',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)) ,
                   )
                   ,Container(
                     width: 300,
                     child:Text('so that you are fully aware of the results of your treatment.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)) ,
                   )
                 ],
               ),
             ),
           )
           ,Container(
             margin: EdgeInsets.only(left: 120,right: 120,top: 20),
             child:  ElevatedButton(
               onPressed: () {
                 Get.to(overView());
                 Fluttertoast.showToast(
                     msg: 'You`re welcome, we`re here to help you..', //message to show toast
                     toastLength: Toast.LENGTH_LONG, //duration for message to show
                     gravity: ToastGravity.CENTER, //where you want to show, top, bottom
                     timeInSecForIosWeb: 5, //for iOS only
                     backgroundColor: Colors.grey[200], //background Color for message
                     textColor: Colors.grey[700], //message text color
                     fontSize: 18 //message font size
                 );
               },
               child:Center(
                 child: (
                   Icon(Icons.keyboard_double_arrow_right)
             )
               ),
               style: ButtonStyle(
                   backgroundColor: MaterialStateProperty.resolveWith((states) {
                     if (states.contains(MaterialState.pressed)) {
                       return Colors.black26;
                     }
                     return Colors.green;
                   }),
                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                       RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
             ),
           )
         ],
       )
       ),
     );


  }
}
