import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:musicplayer/app%20activities/Homepage.dart';

class AuthService {

  Future<void> signup({
    required String email,
    required String password,
    required context,
  }) async {
      try{
           await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
           
           await Future.delayed(const Duration(seconds: 1));
           Navigator.push(context,
           MaterialPageRoute(builder:(context)=>const Homepage()));
      }
      on FirebaseAuthException catch(e){
           String message = "";
           if(e.code == 'weak-password'){
            message='the password is too weak';
           }
           else if(e.code == 'email-already-in-use'){
             message='An account already exists with that email';
           }
           Fluttertoast.showToast(
            msg: message,
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.SNACKBAR,
            backgroundColor: Colors.black54,
            textColor: Colors.white,
            fontSize: 14.0,
            
           );
      }
  }
}