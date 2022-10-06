
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
    return Scaffold(
      body: ListView(
        children: [
          Column(

            children: [
              Text('  ForgotPassword '),
            ],
          ),
        ],
      ),
    );
  }
}



