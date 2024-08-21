import 'package:flutter/material.dart';

class Loginpage  extends StatefulWidget {
  Loginpage ({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                
                 const SizedBox( width: 60,
                height: 60,),
        
        
                const Center(child: const Text("Sign Up",
                style:TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0))),
        
                const SizedBox( width: 30,
                height: 30,),
        
                const TextField(decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey,
                  fontSize: 16),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
                  cursorColor: Colors.grey,),
                
                const SizedBox( width: 30,
                height: 30,),
                
                const TextField(decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey,
                  fontSize: 16),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
                  cursorColor: Colors.grey,),

                const SizedBox( width: 60,
                height: 60,),

                ElevatedButton(onPressed: () { },
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

              const SizedBox( width: 30,
                height: 30,),

              const Text('Or'),

              const SizedBox( width: 30,
                height: 30,),

               Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      IconButton(onPressed: (){} 
                      , icon: const Icon(Icons.circle_notifications_outlined)),
                
                      
                      IconButton(onPressed: (){} 
                      , icon: const Icon(Icons.circle_notifications_outlined)),
                
                      
                      IconButton(onPressed: (){} 
                      , icon: const Icon(Icons.circle_notifications_outlined)),
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