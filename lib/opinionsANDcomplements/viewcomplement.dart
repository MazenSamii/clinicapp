import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class viewcomplements extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection('Complements').get(),
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
              child:Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Image.asset('asset/sss.png',color: Colors.black87,),
                  )
                  ,Container(
                    child: Text('Client`s complements'),
                    margin: EdgeInsets.only(bottom: 20),
                  )
                  ,Container(
                    margin: EdgeInsets.only(left: 30,right: 30),
                    decoration: BoxDecoration(
                        color: Colors.lightGreen[300],
                        borderRadius: BorderRadius.circular(20.5)
                        ,image: DecorationImage(
                      image: AssetImage('asset/masssage.png'),
                      opacity: 200
                    )
                    ),
                    height: 450.h,
                    child: ListView.builder(
                      itemCount: x.data.docs.length,
                      itemBuilder: (context,index){
                        return Container(
                            child:Center(
                              child:Column(
                                children: [
                              Container(
                              margin: EdgeInsets.only(right: 200),
                                child: Icon(Icons.person_pin,size: 90,),
                              ),
                                  Container(
                                    margin: EdgeInsets.only(left: 80),
                                    child: Row(
                                      children: [
                                        Text('Name: ')
                                        ,Text(x.data.docs[index]['Name']),
                                      ],
                                    )
                                  )
                                  ,Container(
                                      margin: EdgeInsets.only(left: 80),
                                      child: Row(
                                        children: [
                                          Text('Injury: ')
                                          ,Text(x.data.docs[index]['Injury']),
                                        ],
                                      )
                                  )
                                  ,Container(
                                      margin: EdgeInsets.only(left: 80,bottom: 10),
                                      child: Row(
                                        children: [
                                          Text('Complement: ')
                                          ,Text(x.data.docs[index]['Complement']),
                                        ],
                                      )
                                  )
                                  ,Container(
                                    margin: EdgeInsets.only(left: 50,right: 50),
                                    height: 1,
                                    color: Colors.black,
                                  )
                                ],
                              ) ,
                            )
                        );
                      },
                    ),
                  ) ,
                  Container(
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