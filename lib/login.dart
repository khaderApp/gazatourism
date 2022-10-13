
import 'package:flutter/cupertino.dart';
import 'package:gazatourism/home_page.dart';
import 'package:gazatourism/main.dart';
import 'package:flutter/material.dart';
import 'package:gazatourism/register.dart';

import 'drawer/my_darwer.dart';
import 'forgot_password.dart';

class Login extends StatefulWidget {


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SafeArea(
        child: Container(
          width:double.infinity ,
          height:double.infinity ,

          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("images/Fotolia.png"),
            ),
          ),

          child: Stack(

            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 190,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextFormField(
                        decoration: InputDecoration(

                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,width: 2)
                            ),
                            hintText: "E-Mail",hintStyle: TextStyle(

                          fontSize:23 ,
                          color: Colors.white,
                        )
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextFormField(
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,width: 2)
                            ),

                            hintText: "Password",hintStyle: TextStyle(
                          fontSize:23 ,
                          color: Colors.white,
                        )
                        ),
                      ),
                    ),

                    SizedBox(height: 20,),
                    Padding(
                      padding: EdgeInsets.only(right: 30),
                    child:Row(

                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder:(context) => ForgotPassword(),
                                  ));
                            },
                            child: Text("Forgot Password?",style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),



                        ]
                    ), ),

                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage(),
                          ),);
                    }
                      , child: Text("LOGIN",style: TextStyle(
                        fontSize: 25,
                        fontWeight:   FontWeight.bold,
                        color: Colors.black,

                      ),

                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.yellowAccent),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 110 ,vertical: 15)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27)
                          ))

                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text("____________   OR   ___________", style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),),
                    SizedBox(
                      height: 35,
                    )  ,

                    ElevatedButton(onPressed: (){



                    }
                      , child: Text("Google",style: TextStyle(
                        fontSize: 25,
                        fontWeight:   FontWeight.bold,
                        color: Colors.white,

                      ),

                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.purple),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 110 ,vertical: 15)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27)
                          ))

                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don\'t Have an Account ! ",style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),),

                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) => Register(),
                                ),);
                          },
                          child: Text("Sign Up Form Here",style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // Text("Lorem ipsum dolor sit amet, consectetur",style:
                    // TextStyle(
                    //   fontSize: 15,
                    //   color: Colors.white,
                    // ),
                    // ),
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
