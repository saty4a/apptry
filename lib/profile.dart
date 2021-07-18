import 'package:ecommerce/auth.dart';
import 'package:ecommerce/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/register.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? user = FirebaseAuth.instance.currentUser!.email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title:
            Padding(
              padding: EdgeInsets.only(left: 95.0),
            child: Text("Profile",style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
            ),
            ),
            ),
          ),

          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Center(
            child: Container(
            child:
                Column(
               children:[
                 Container(
                   margin: EdgeInsets.only(top: 80.0),
              child:Container( child:
                CircleAvatar(
                  radius: 50,
                 foregroundColor: Colors.black,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                  backgroundColor: Color(0xffE6E6E6),
                  radius: 50,
                  child: Icon(
                    Icons.person,
                        size: 80.0,
                        color: Color(0xffCCCCCC),
                  ),
                ),
              ),
              ),
                 ),
                 Container(
                   margin: EdgeInsets.only(top: 20.0,bottom: 0.0),
                   //color: Colors.blue,
                   child: Text("logged in",style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 20.0,
                     color: Colors.black,
                   ),),
                 //)
                 ),
                 Container(
                   margin: EdgeInsets.only(top: 100.0),
                   //color: Colors.blue,
                   child: Text("Email: $user",style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 20.0,
                     color: Colors.black,
                   ),),
                 ),
                /*Expanded(
                  child:*/
                 Expanded(child: Center(
                   child:Column( children:[
                 Container(
                    child: ElevatedButton(
                      onPressed: (){
                        AuthClass().signOut();
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Login()),
                                (route) => false);
                      },
                    child: Container(
                      //alignment: Alignment.center,
                      color: Colors.blue[800],
                      width: double.infinity,
                      child:
                    Text("Log out",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18.0,
                  ),),
                      padding: EdgeInsets.only(left: 110.0),

                    ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[800],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                  ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 50.0),
                  ),
                ],
                   ),
                 ),
                 ),
                //),
               ],
                ),
            ),
            ),
              ),

    );

  }
}
