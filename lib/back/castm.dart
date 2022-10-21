

import'package:flutter/material.dart';
import 'package:gazatourism/sors_material/src_tourism.dart';
import '../drawer/my_darwer.dart';
import '../in_app/search.dart';


class CastmArea extends StatefulWidget {


  @override
  State<CastmArea> createState() => _CastmAreaState();
}

class _CastmAreaState extends State<CastmArea> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [IconButton(
          splashRadius: 20,
          splashColor: Colors.amber,
          onPressed: (){
            showSearch(context: context, delegate: Search() );
          },
          icon: Icon(Icons.search,color: Colors.white,))],
        backgroundColor: Colors.black87,
        title: Text("tourism",
          textAlign: TextAlign.center,
        ),
      ),
      drawer: MyDrawer(),
      body: Container(
        width:   double.maxFinite,
        height:  double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image(
                fit: BoxFit.cover,
                  height: 250,
                  width: double.infinity,
                  image: Image.asset(SRCM.images[SRCM.indexU!]).image),


              Container(

                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 30,),
                    Text('${SRCM.name[SRCM.indexU!]} :',
                      style: TextStyle(color: Colors.black87,
                        fontSize: 25, ),
                      textDirection: TextDirection.rtl ,
                    ),

                    SizedBox(height: 17,),


                    Text('${SRCM.shortDes[SRCM.indexU!]} :',
                      style: TextStyle(color: Colors.black87 ,
                        fontSize: 17,
                          fontWeight: FontWeight.bold),
                      textDirection: TextDirection.rtl ,
                    ),
                    SizedBox(height: 10,),


                    Text('${SRCM.allData[SRCM.indexU!]}',
                      style: TextStyle(color: Colors.black87 ,
                        fontSize: 18,
                      ),
                      textDirection: TextDirection.rtl ,
                    ),
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
