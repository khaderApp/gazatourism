

import 'package:flutter/material.dart';
import 'package:gazatourism/login.dart';

import 'drawer/my_darwer.dart';


class Register extends StatefulWidget {


  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:  SafeArea(
        child: Container(
          width:double.infinity ,
          height:double.infinity ,

          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("images/Fotolia.png"),
            ),
          ),

          child: Stack(

            children: [

              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 210,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextFormField(
                        decoration: InputDecoration(

                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,width: 2)
                            ),
                            hintText: "Full Name",hintStyle: TextStyle(

                          fontSize:22 ,
                          color: Colors.white,
                        )
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextFormField(
                        decoration: InputDecoration(

                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,width: 2)
                            ),
                            hintText: "E_Mail",hintStyle: TextStyle(

                          fontSize:22 ,
                          color: Colors.white,
                        )
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextFormField(
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,width: 2)
                            ),

                            hintText: "Password",hintStyle: TextStyle(
                          fontSize:22,
                          color: Colors.white,
                        )
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextFormField(
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,width: 2)
                            ),

                            hintText: "Confirm Password",hintStyle: TextStyle(
                          fontSize:20 ,
                          color: Colors.white,
                        )
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Login(),),
                      );
                    }
                      , child: Text("REGISTER",style: TextStyle(
                        fontSize: 25,
                        fontWeight:   FontWeight.bold,
                        color: Colors.black,

                      ),

                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.yellowAccent),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 90 ,vertical: 15)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27)
                          ))

                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Lorem ipsum dolor sit amet consectetur ",style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),),


                      ],
                    ),

                  ],
                ),
              ),

              Positioned(
                  top: 45,
                  right: 130,
                  child: Image.asset("images/logo.png") ),

            ],

          ),
        ),
      ),
    );
  }
}
