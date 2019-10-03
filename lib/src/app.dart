import 'package:flutter/material.dart';
import 'package:flutter_app_login_bloc/src/screens/blocks/provider.dart';
import 'package:flutter_app_login_bloc/src/screens/main_container.dart';

class App extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Log me In!',
        home: MainContainer(),
      ),
    );
  }
}