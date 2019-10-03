import 'package:flutter/material.dart';
import 'package:flutter_app_login_bloc/src/screens/login/login_screen.dart';
import 'package:flutter_app_login_bloc/src/screens/login/login_screen_2.dart';

class MainContainer extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreen2(),
    );
  }
}