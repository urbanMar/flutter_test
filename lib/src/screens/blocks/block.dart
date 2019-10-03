import 'dart:async';
import 'package:rxdart/rxdart.dart';

import 'package:flutter_app_login_bloc/src/screens/blocks/validators.dart';

class Block with Validators{
  final _emailController = BehaviorSubject<String>();
  Function(String) get changeEmail => _emailController.sink.add;
  Stream<String> get email => _emailController.stream.transform(validateEmail);


  final _passController = BehaviorSubject<String>();
  Function(String) get changePass => _passController.sink.add;
  Stream<String> get pass => _passController.stream.transform(validatePass);

  Stream<bool> get summitValid => Observable.combineLatest2(email, pass, (email, pass) => true);

  submit(){
    final validEmail = _emailController.value;
    final validPass = _passController.value;
    
    print('mail: $validEmail   pass: $validPass');
  }

  test(){

  }

  dispose(){
    _emailController.close();
    _passController.close();
  }
}