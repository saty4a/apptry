import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ecommerce/register.dart';
import 'package:ecommerce/login.dart';

class Body extends StatefulWidget {
  //const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), (){
      if(auth.currentUser==null){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Login()), (route) => false);
      }else{
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Homepage()), (route) => false);
      }
    });
    return Center(
     child: Container(
      decoration: BoxDecoration(
      color: Colors.white,
      ),
       child: Padding (
         padding: EdgeInsets.symmetric(vertical:30.0,horizontal: 20.0),
       child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,children: <Widget>[
         Container(alignment: Alignment.centerRight,
         child: TextButton(
           onPressed: (){
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => Homepage()),
             );
           },
           child: Text("skip",style: TextStyle(
             color: Colors.black,
             fontSize: 20.0,
           ),),
         ),
         margin: EdgeInsets.only(top: 20.0),
         ),
         /*SizedBox(width:10.0),
         Padding(padding: EdgeInsets.symmetric(horizontal: 5.0),
          child:
          Container( alignment: Alignment.centerRight,
          child: Icon(
           Icons.arrow_forward,
           color: Colors.white,
           size: 30.0,
         ),
          ),
         ),*/
          Container(
            //heightFactor: double.infinity,
            //width: double.infinity,
            //height: double.infinity,
            alignment: Alignment.center,
            //margin:  EdgeInsets.symmetric(vertical: 220),
              child: Padding(
              padding: EdgeInsets.symmetric(vertical: 220.0),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget> [
                  Center(
                    child:
                  Text("SkillKart", style:
                  TextStyle(
                    fontFamily: "RobotoBold",
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 50.0,
                  ),),
                  ),
                  //Center(
                  //SizedBox(height: 10.0),
                      Padding(
                          padding: EdgeInsets.only(left: 15.0,top: 260.0),
                        child:
                         Text("Powered by")
                      ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0,top: 30.0),
                    child:Image(image: AssetImage("assets/zairza.jpg"),),
                    )
                    ),
                  //),
                ],
            )
            )
          ),
       ],),
       )
     ));
  }
}