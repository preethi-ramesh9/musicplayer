import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:musicplayer/firebase_options.dart';
import 'app activities/loginpage.dart';

void main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Loginpage(),
    );

  }
}