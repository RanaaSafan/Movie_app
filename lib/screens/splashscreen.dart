import 'package:flutter/material.dart';
import 'package:movie_app/screens/Home_page.dart';
import 'dart:async';


class SplashScreen extends StatefulWidget{

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const Login()
    )
    )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
      Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          children: [
            Center(
              child:
              Image.asset("assets/lib.jpg",height:400,width: 500,),
            ),
            Center(child: const Text("Pluto TV",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,),)),
          ],
        ),
      ),
    );
  }
}
