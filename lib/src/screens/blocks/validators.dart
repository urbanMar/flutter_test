
import 'dart:async';

class Validators{

  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink){
      if(email.contains('@')){
        sink.add(email);
      } else {
        sink.addError('Enter valid Email');
      }
    }
  );

  final validatePass = StreamTransformer<String, String>.fromHandlers(
      handleData: (pass, sink){
        if(pass.length > 3){
          sink.add(pass);
        } else {
          sink.addError('Enter valid Password');
        }
      }
  );

}