// import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class location extends StatelessWidget {
  const location({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Synergy Physio'),backgroundColor: Colors.green,

        toolbarHeight: 40,
      ),
      body:
      GoogleMap(
        onMapCreated: (x){

        },
        initialCameraPosition: CameraPosition(
          target: LatLng(30.3593519,30.5327214)
          ,zoom: 12.5,

        ),
        markers: {
          Marker(
              markerId:MarkerId('1'),
              position:LatLng(30.3989885,30.5123702)
              ,infoWindow: InfoWindow(
              title:('Hey'),
              snippet: ('Synergy Physio clinic')
              ,onTap: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>future()));
          }
          )
          )
        },

      ),
    );
  }
}
