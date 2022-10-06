
import 'package:flutter/material.dart';
import 'package:gazatourism/login.dart';

import 'package:gazatourism/main.dart';




class MySeplash extends StatefulWidget {


  @override
  State<MySeplash> createState() => _MySeplashState();
}

class _MySeplashState extends State<MySeplash> {

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 6,),(){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Login(),)
        ,);
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image:AssetImage("images/BG.png",),fit: BoxFit.cover
            ),
        ),
        child:Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/logo.png",height: 200,width: 200,),
                  CircularProgressIndicator(backgroundColor: Colors.green,)



                     ],
        ),
      ),
      ),
    );
  }
}
