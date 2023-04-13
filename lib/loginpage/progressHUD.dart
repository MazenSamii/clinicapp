// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class progressHUD extends StatelessWidget {
//   final Widget child;
//   final bool inAsyncCall;
//   final double opacity;
//   final Color color;
//   final Animation<Color> valueColor;
//   progressHUD(
//   {
//     Key key,
//     this.child,
//     this.inAsyncCall,
//     this.opacity=0.3,
//     this.color=Colors.grey,
//     this.valueColor
// }) : super(key:key);
//
//   @override
//   Widget build(BuildContext context) {
//     List<Widget> widgetList = new List<Widget>();
//     widgetList.add(child);
//     if(inAsyncCall){
//       final modal = new Stack(
//         children: [
//           Opacity(
//               opacity: opacity,
//             child: ModalBarrier(dismissible: false,color: color,),
//           )
//           ,Center(
//             child:CircularProgressIndicator(),
//           )
//         ],
//       );
//       widgetList.add(modal);
//     }
//     return Stack(
//       children: widgetList,
//     );
//   }
// }
