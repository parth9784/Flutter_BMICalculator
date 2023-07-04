import 'package:bmicalci/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class intro extends StatelessWidget{
  var name=TextEditingController();
  var age=TextEditingController();
  // intro(this.name);
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("WELCOME TO BMI CALCI",style: TextStyle(fontStyle: FontStyle.italic),),
      ),
      body:
        Container(
          color: Colors.lightBlueAccent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height:100,
                  width:200,
                  child: TextField(
                    controller: name,
                    decoration: InputDecoration(
                      hintText:"Enter your Name",
                      prefixIcon: Icon(Icons.people_alt_sharp),
                    ),
                  ),
                ),
                Container(
                  height:80,
                  width:200,
                  child: TextField(
                    controller: age,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText:"Enter your Age",
                      prefixIcon: Icon(Icons.boy_rounded),
                    ),
                  ),
                ),
                ElevatedButton(onPressed: () {
                  var n = name.text;
                  var a = age.text;
                  if (n == "" && a == "") {
                     Text("Please fill all the fields above!!",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 18),);
                  }
                  else{
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => homepage(),));
                    // Text("Please fill all the fields above!!",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 18),);
                  }
                }
                    , child: Text("Let's go",style:TextStyle(fontStyle: FontStyle.italic,fontSize:15))),
              ],
            ),
          ),
        ),

    );
  }

}