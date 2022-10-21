
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gazatourism/drawer/my_darwer.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapT extends StatefulWidget {


  @override
  State<GoogleMapT> createState() => _GoogleMapTState();
}

class _GoogleMapTState extends State<GoogleMapT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      drawer: MyDrawer(),
      
      body: Stack(
        
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
                target:LatLng(31.513651,34.455891),
                zoom: 10 ),
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
