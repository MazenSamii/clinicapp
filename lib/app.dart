
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'mainPages/contact.dart';
import 'mainPages/overview.dart';
import 'mainPages/splash.dart';
import 'opinionsANDcomplements/addcomplement.dart';
import 'opinionsANDcomplements/addopinion.dart';

class myapp extends StatelessWidget {
  const myapp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360,690),
        minTextAdapt: true,
        splitScreenMode:true,
      builder: (BuildContext context, Widget child) {
        return GetMaterialApp(
          home: splashScreen(),
          debugShowCheckedModeBanner: false,
        );
      },

    );
  }
}
