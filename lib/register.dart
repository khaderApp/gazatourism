

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

      body: ListView(
        children: [
          Column(

             children: [
               Text('  Register '),
             ],
          ),
        ],
      ),
    );
  }
}
