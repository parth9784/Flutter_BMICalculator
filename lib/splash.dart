import 'dart:async';
import 'package:bmicalci/intro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return splashstate();
  }
}
class splashstate extends State<splash>{
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => intro(),));

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          height:double.infinity,
          width:double.infinity,
          color: Colors.indigo,
          child: Center(child: Text("BMI CALCULATOR",style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic,color: Colors.white,fontWeight: FontWeight.w700),)),
        ),
      ),

    );
  }
}