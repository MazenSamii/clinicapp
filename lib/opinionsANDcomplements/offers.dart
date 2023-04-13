import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class viewoffers extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
          future: FirebaseFirestore.instance.collection('Offers').get(),
          builder: (context,AsyncSnapshot x){
            if(x.hasData==false){
               return Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 200,left: 10,bottom: 5),
                    child: Row(
                      children: [
                        Text('Loading..Please check your internet conection',style: TextStyle(fontSize: 13),)
                        ,Icon(Icons.downloading_rounded)
                      ],
                    ),
                  )
                  ,Text('No Data')
                ],
              );
            }
            else{
              return Center(
               child: Column(
                  children: [
                    Container(
                      width: 500,
                      height: 220,
                      child: Image.asset('asset/sss.png',color: Colors.green,),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50,right: 50,bottom: 10),
                  child: Text('''Here, you will find all the advertisements and special offers , 
if you want to inquire more you can contact us at any time ''',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),),
              )
                   , Container(
                      // color: Colors.blue,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/helthicon.png'),
                          opacity:150
                        )
                      ),
                      width: 600,
                      height: 460,
                      child:ListView.builder(
                        itemCount: x.data.docs.length,
                        itemBuilder: (context,index){
                          return Container(

                                child:Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 200,bottom: 20,top: 10),
                                      child:CircleAvatar(
                                        radius: 48, // Image radius
                                        backgroundImage: AssetImage('asset/doctor.webp'),
                                      ) ,
                                    )
                                    ,Container(
                                      child:Text(x.data.docs[index]['Offer']),
                                    )
                                    ,Container(
                                      height: 20,
                                    )
                                    ,Container(
                                      height: 1,
                                      color: Colors.black,
                                      margin: EdgeInsets.only(left: 50,right: 50),
                                    )
                                  ],
                                ) ,
                          );
                        },
                      )
                    )
                    ,Container(
                      margin: EdgeInsets.only(left: 270,right: 20,top: 10),
                      child: Image.asset('asset/sss.png',color: Colors.black54,),
                    )
                  ],
                )
              );
            }
          },
        )
    );
  }

}