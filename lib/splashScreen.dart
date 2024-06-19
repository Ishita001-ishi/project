import 'dart:async';

import 'package:custom_application/FirstScreen.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  initState(){
    Timer(Duration(seconds: 30),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Firstscreen()));
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            child:Image.asset('assets/images/t2.png',fit: BoxFit.cover,),
          ),
          Container(
            child: Text('Explore The World With Us',
            style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 20,),
          // GestureDetector(
          //  onTap: (){
          //    Navigator.push(context,MaterialPageRoute(builder: (context)=>Firstscreen()));
          //  },
          // ),
           Container(
          //   height: 45,
          //   width: 250,
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //     borderRadius: BorderRadius.circular(30)
          //   ),
          //   child: Center(child: Text('Get Start'),),
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Firstscreen()));

            }, child: Text('get start',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
          )
        ],
      ),

          

      ),
    );
  }
}
