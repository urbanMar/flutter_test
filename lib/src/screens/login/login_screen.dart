import 'package:flutter/material.dart';
import 'package:flutter_app_login_bloc/src/screens/blocks/block.dart';
import 'package:flutter_app_login_bloc/src/screens/blocks/provider.dart';
import 'package:flutter_app_login_bloc/src/screens/mixins/column_mixin.dart';


class LoginScreen extends StatelessWidget with ColumnMixin{

  @override
  Widget build(BuildContext context) {
    final block = Provider.of(context);

    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            emailField(block),
            spacer(15.0),
            passField(block),
//            spacer(15.0),
//            checkBoxArea(),
            spacer(30.0),
            raisedButton(block),
          ]
      ),
    );
  }


  Widget emailField(Block block){
    return StreamBuilder(
      stream: block.email,
      builder: (context, snapshot){
        return TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.mail),
            hintText: 'Give an email',
            labelText: 'Email',
            errorText: snapshot.error,
            border: OutlineInputBorder(),
          ),
          onChanged: block.changeEmail,
          keyboardType: TextInputType.emailAddress,
        );
      },
    );
  }

  Widget passField(Block block){
    return StreamBuilder(
      stream: block.pass,
      builder: (context, snapshot){
        return TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            hintText: 'Insert secure password',
            labelText: 'Password',
            errorText: snapshot.error,
            border: OutlineInputBorder(),
          ),
          onChanged: block.changePass,
          obscureText: true,
        );
      },
    );
  }

//  Row checkBoxArea(){
//    return Row(
//      children: <Widget>[
//        Checkbox(
//          value: keeped,
//        ),
//        Text('Keep me logged in!')
//      ],
//    );
//  }

  Widget raisedButton(Block block){
    return StreamBuilder(
      stream: block.summitValid,
      builder: (context, snapshot){
        return RaisedButton.icon(
          textColor: Colors.white,
          color: Colors.blue,
          onPressed: snapshot.hasData ? block.submit : null,
          label: Text('Summit'),
          icon: Icon(Icons.send),
        );
      },
    );
  }


}