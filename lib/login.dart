
import 'package:gazatourism/main.dart';
import 'package:flutter/material.dart';
import 'package:gazatourism/register.dart';

import 'drawer/my_darwer.dart';

class Login extends StatefulWidget {


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          Column(

            children: [
             Text('  login ')
            ],
          ),
        ],
      ),
    );
  }
}
