
import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';


class ForgotPassword extends StatefulWidget {


  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:  SafeArea(
        child: Container(
          width:double.infinity ,
          height:double.infinity ,

          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/Fotolia.png"),
            ),
          ),

          child: Stack(

            children: [

              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 250,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextFormField(
                        decoration: InputDecoration(

                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,width: 2)
                            ),
                            hintText: "Enter E-Mail ",
                            hintStyle: TextStyle(
                             fontSize:20 ,
                             color: Colors.white,
                        )
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 70,
                    ),
                    ElevatedButton(onPressed: (){



                    }
                      , child: Text("Send Email",style: TextStyle(
                        fontSize: 25,
                        fontWeight:   FontWeight.bold,
                        color: Colors.black,

                      ),

                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.yellowAccent),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 95 ,vertical: 15)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27)
                          ))

                      ),
                    ),

                    SizedBox(
                      height: 180,
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
                            ));
                          },
                          child: Text("Sign Up Form Here",style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ],
                    ),
                    Text("Lorem ipsum dolor sit amet, consectetur",style:
                    TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),)
                  ],
                ),
              ),
              // Positioned(
              //     top: -20,
              //     left: -70,
              //
              //     child: Image.asset("images/Header Shape-1.png") ),
              Positioned(
                  top: 70,
                  right: 130,
                  child: Image.asset("assets/images/logo.png") ),

            ],

          ),
        ),
      ),
    );
  }
}



