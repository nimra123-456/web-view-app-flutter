import 'dart:async';

import 'package:flutter/material.dart';
import 'package:togoparts/screens/challenge_screen.dart.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:5), (() => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ChallengeScreen()))));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
 
        children: [
         Padding(
           padding: const EdgeInsets.only(top:120,right:80,left:80),
           child: Image.asset(
      
        "assets/images/splash.png"),
         ),
            SizedBox(height:190),
        Text("www.togoparts.com",style:Theme.of(context).textTheme.headline5!.copyWith(fontWeight:FontWeight.bold,color:Colors.amber[700])),
      
        
        Padding(
          padding: const EdgeInsets.only(top:20.0,right:30,left:30),
          child: Text("Singapore's Most Addictive Bicycle Marketplace",textAlign:TextAlign.center ,style:Theme.of(context).textTheme.headline6!.copyWith(letterSpacing:1.0,fontWeight:FontWeight.w700,color:Colors.black)),
        )
        ]
      ));
  }
}