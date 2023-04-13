import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../mainPages/overview.dart';

class knee extends StatelessWidget {
  const knee({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(right: 300),
            child: IconButton(
              onPressed: (){
                Get.back(result: overView());
              },
              icon: Icon(Icons.arrow_back,color: Colors.grey[600],),
            ),
          ),
          Container(
              width: 100,height: 650,
              margin: EdgeInsets.only(left: 20,right: 20,top: 7),
              decoration: BoxDecoration(
                  color: Colors.lightGreen[100],
                  borderRadius: BorderRadius.circular(30.5)
              ),
              child:Container(
                margin: EdgeInsets.only(left: 50,right: 50,top: 20),
                child: ListView(
                  children: [
                    Container(
                      child: ClipRRect(
                        child: Image.asset('asset/k2.jpg')
                        ,borderRadius: BorderRadius.circular(30.5),
                      ),
                    )
                    ,Container(
                      margin: EdgeInsets.only(top: 20),
                      child: ClipRRect(
                        child: Image.asset('asset/k3.jpg')
                        ,borderRadius: BorderRadius.circular(30.5),
                      ),
                    )
                    ,Container(
                      margin: EdgeInsets.only(top: 20),
                      child: ClipRRect(
                        child: Image.asset('asset/k4.jpg')
                        ,borderRadius: BorderRadius.circular(30.5),
                      ),
                    )
                    ,Container(
                      margin: EdgeInsets.only(top: 20),
                      child: ClipRRect(
                        child: Image.asset('asset/k5.jpg')
                        ,borderRadius: BorderRadius.circular(30.5),
                      ),
                    )
                    ,Container(
                      margin: EdgeInsets.only(top: 20),
                      child: ClipRRect(
                        child: Image.asset('asset/k6.jpg')
                        ,borderRadius: BorderRadius.circular(30.5),
                      ),
                    )
                  ],
                ),
              )

          )
          ,Container(
            margin: EdgeInsets.only(left: 270,right: 20,top: 10),
            child: Image.asset('asset/sss.png',color: Colors.grey[600],),
          )
        ],
      ),
    );
  }
}
