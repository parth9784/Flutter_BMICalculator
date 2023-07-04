import 'package:bmicalci/intro.dart';
import 'package:bmicalci/splash.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(bmicalci());
}
class bmicalci extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BMI CALCULATOR",
      theme:ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home:splash(),
    );
  }
}
class homepage extends StatefulWidget{
  @override
  State<homepage> createState() {
    return homepagestate();
  }
}
class homepagestate extends State<homepage>{
  var hinch=TextEditingController();
  var hfeet=TextEditingController();
  var weight=TextEditingController();
  late var thei;
  late var long;
  var result="";
  late double bmi;
  var bgcolor=Colors.cyanAccent;
  late String msg;
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR",style:TextStyle(fontWeight: FontWeight.w400)),
      ),
      body: Container(
        color: bgcolor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text("BMI",style:TextStyle(fontWeight: FontWeight.w600,fontSize: 25))),
              SizedBox(
                height:15
              ),
              Text("Enter the Height:",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 20)),
              SizedBox(
                height:11,
              ),
              Container(
                height:80,
                width:150*2,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: hfeet,
                  decoration: InputDecoration(

                    prefixIcon: Icon(Icons.height_rounded),
                    hintText:"Enter the Height in feets"
                  ),

                ),
              ),
              Container(
                height:100,
                width:150*2,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: hinch,
                  decoration: InputDecoration(

                      prefixIcon: Icon(Icons.height_rounded),
                      hintText:"Enter the Height in inches"
                  ),

                ),
              ),
              Text("Enter the Weight in Kgs:",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 20)),
              SizedBox(
                height:11,
              ),
              Container(
                height:100,
                width:150*2,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: weight,
                  decoration: InputDecoration(

                      prefixIcon: Icon(Icons.line_weight_sharp),
                      hintText:"Enter the Weight",
                  ),

                ),
              ),
              // SizedBox(
              //   height:2,
              // ),
              ElevatedButton(onPressed: (){
                var wt=int.parse(weight.text);
                var hf=int.parse(hfeet.text);
                var hi=int.parse(hinch.text);
                var tinch=(hf*12)+hi;
                thei=(tinch*2.54);
                long=thei/100;


                if(wt!=""&&hf!=""&&hi!=""){
                  // bmi=wt/hei*hei;
                  bmi=(wt/(long*long));
                  if(bmi<=18.5){
                     msg="You are UnderWeight!!!";
                    bgcolor=Colors.yellowAccent;
                  }
                  else if(18.5<bmi && bmi<=24.9){
                    msg="You are Normal!!";
                    bgcolor=Colors.lightGreenAccent;
                  }
                  else if(25<=bmi && bmi<=29.9){
                    msg="You are OverWeight!!!";
                    bgcolor=Colors.deepOrangeAccent;
                  }
                  else{
                    msg="You are Obese!!!";
                    bgcolor=Colors.redAccent;
                  }
                  result="$msg \n Your BMI is ${bmi.toStringAsFixed(3)}";
                  setState(() {

                  });

                }
                else{
                  setState(() {
                    result="Please fill all the fields given above!";
                  });
                }

              }, child: Text("Calculate")),
              SizedBox(
                height:11,
              ),
              Center(child: Text(result,style:TextStyle(fontWeight:FontWeight.w400,fontSize:20,)))


            ],
          ),
        ),
      ),

    );
  }
}