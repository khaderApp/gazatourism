
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gazatourism/drawer/my_darwer.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../sors_material/src_tourism.dart';

class GoogleMapT extends StatefulWidget {


  @override
  State<GoogleMapT> createState() => _GoogleMapTState();
}

class _GoogleMapTState extends State<GoogleMapT> {
   Completer<GoogleMapController> _completer= Completer();
   List<Marker>? mapMarker;
   @override
  void initState() {

     mapMarker = SRCM.getLatLng();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      drawer: MyDrawer(),
      
      body: Stack(
        
        children: [
          GoogleMap(
            myLocationButtonEnabled: true,
            myLocationEnabled: true ,
            initialCameraPosition: CameraPosition(
                target:LatLng(31.513651,34.455891),
                zoom: 10 ),
            onMapCreated: (GoogleMapController controller){
              _completer.complete(controller);
            },
              markers:mapMarker!.map((e) => e).toSet() ,
          ),
          Container(

           margin: EdgeInsets.all(10),
            width: 75,
            height: 75,
            child: Image.asset("assets/images/logo.png",),
            alignment: Alignment.bottomLeft,

          ),
        ],
      ),
    );
  }
}
