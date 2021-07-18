//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:ecommerce/body.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

// ignore: camel_case_types
class splash extends StatefulWidget {
  //const splash({ Key? key }) : super(key: key);

  @override
  _splashState createState() => _splashState();
}

// ignore: camel_case_types
class _splashState extends State<splash> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot){
        if(snapshot.hasError){
          return Container();
        }
        if(snapshot.connectionState==ConnectionState.done){
          return Scaffold(
              body: SingleChildScrollView(
                  child: AnnotatedRegion<SystemUiOverlayStyle>(
                    value: SystemUiOverlayStyle.light,
                    child: Body(),
                  )
              )
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
      //resizeToAvoidBottomInset: false,
    );
  }
}