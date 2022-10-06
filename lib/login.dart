
import 'package:gazatourism/main.dart';
import 'package:flutter/material.dart';
import 'package:gazatourism/register.dart';

class Login extends StatefulWidget {


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(

            children: [
             Text('  login ')
            ],
          ),
        ],
      ),
    );;
  }
}
