import 'package:flutter/material.dart';
import 'package:musicplayer/services/auth_service.dart';
import 'package:sign_in_button/sign_in_button.dart';

class Loginpage  extends StatefulWidget {
  const Loginpage ({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  // ignore: non_constant_identifier_names
  TextEditingController Useremail =  TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController Userpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(leading:  const Icon(Icons.arrow_back),
      backgroundColor: Colors.white,
      shadowColor: null,),
      backgroundColor: Colors.white,
      body: Padding(
        padding:  const EdgeInsets.only(left: 30.0,right: 30.0,bottom: 30.0),
        child: Center(
          child: Container(
            color: Colors.white, 
            child: Column(
              children: [
                //to input email
                
                 const SizedBox( width: 80,
                height: 80,),
        
        
                const Center(child: const Text("Sign Up",
                style:TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0))),
        
                const SizedBox( width: 30,
                height: 30,),
        
                TextField(
                  controller: Useremail,
                  decoration: const InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey,
                  fontSize: 16),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
                  cursorColor: Colors.grey,),
                
                const SizedBox( width: 30,
                height: 30,),
                
                TextField(
                  controller: Userpassword,
                  decoration: const InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey,
                  fontSize: 16),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
                  cursorColor: Colors.grey,),

                const SizedBox( width: 60,
                height: 60,),

                ElevatedButton(
                  onPressed: () { 
                    AuthService().signup(
                    email: Useremail.text, 
                    password: Userpassword.text,
                    context: this.context);
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(240, 50),
                     backgroundColor: const Color.fromARGB(255, 216, 232, 231),
                     shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Text('Sign Up',
              style: TextStyle(fontSize: 16.0,
              color: Colors.black),
              ),),

              const Padding(
                padding: EdgeInsets.only(left: 160.0,top: 12.0),
                child: Text("Already have an account?",
                textAlign: TextAlign.end,
                style: TextStyle(color:  Color.fromARGB(255, 216, 232, 231),fontStyle: FontStyle.italic),),
              ),

              const SizedBox( width: 30,
                height: 30,),

              const Text('Or'),

              const SizedBox( width: 30,
                height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SignInButton(
                     Buttons.facebook,
                     mini: true,
                     onPressed: () {},
                   ),
                  
                  SignInButton(
                     Buttons.twitter,
                     mini: true,
                     onPressed: () {},
                   ),

                  SignInButton(
                     Buttons.tumblr,
                     mini: true,
                     onPressed: () {},
                   ),

                  SignInButton(
                     Buttons.apple,
                     mini: true,
                     onPressed: () {},
                   ),
                ],
              ),

              
                

              ],
            ),
            
          ),
        ),
      ),
    );
  }
}