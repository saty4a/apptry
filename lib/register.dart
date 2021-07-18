import 'package:ecommerce/auth.dart';
import 'package:ecommerce/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ecommerce/login.dart';

class Registerpro extends StatefulWidget {
  const Registerpro({Key? key}) : super(key: key);

  @override
  _RegisterproState createState() => _RegisterproState();
}

class _RegisterproState extends State<Registerpro> {
  GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPass = TextEditingController();

  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isloading == false
          ? Container(
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 0.4, 0.7, 0.9],
                  colors: [
                    Color(0xff3594DD),
                    Color(0xff4563DB),
                    Color(0xff5036D5),
                    Color(0xff5B16D0),
                  ],
                ),
              ),
              padding: EdgeInsets.only(
                  top: 50.0, bottom: 50.0, right: 10.0, left: 10.0),
              child: Card(
                clipBehavior: Clip.antiAlias,
                color: Colors.cyanAccent,
                elevation: 2.0,
                margin: EdgeInsets.all(2.0),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: Form(
                  key: _form,
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            child: Center(
                              child: Text(
                                "SkillKart",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Container(
                            child: Center(
                              child: Text(
                                "Register",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          SizedBox(height: 30.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "Email",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(color: Colors.black),
                                  controller: _email,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(top: 14.0),
                                    /*prefixIcon: Icon(
                              Icons.email,
                              color: Colors.black,
                            ),*/
                                    hintText: "Enter your Email",
                                  ),
                                ),
                              ),
                              // for password

                              Padding(
                                padding: EdgeInsets.only(left: 15.0, top: 10.0),
                                child: Text(
                                  "Password",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                child: TextFormField(
                                  obscureText: true,
                                  style: TextStyle(color: Colors.black),
                                  controller: _password,
                                  validator: (val) {
                                    if (val!.isEmpty) return "Empty";
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(top: 14.0),
                                    /*prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.black,
                            ),*/
                                    hintText: "Enter your Password",
                                  ),
                                ),
                              ),
                              //Confirm Password
                              Padding(
                                padding: EdgeInsets.only(left: 15.0, top: 20.0),
                                child: Text(
                                  "Confirm Password",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                child: TextFormField(
                                  obscureText: true,
                                  style: TextStyle(color: Colors.black),
                                  controller: _confirmPass,
                                  validator: (val) {
                                    if (val!.isEmpty) return "Empty";
                                    /*
                            if(val != _password.text)
                              return "Not Match";*/
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(top: 14.0),
                                    /*prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.black,
                            ),*/
                                    //hintText: "Enter your Password",
                                  ),
                                ),
                              ),
                              //child:
                              Padding(
                                //height: 0,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      isloading = true;
                                    });
                                    if (_password == _confirmPass) {
                                      AuthClass()
                                          .createAccount(
                                              email: _email.text.trim(),
                                              password: _password.text.trim())
                                          .then((value) {
                                        if (value == "Account created") {
                                          setState(() {
                                            isloading = false;
                                          });
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Homepage()),
                                              (route) => false);
                                        } else {
                                          setState(() {
                                            isloading = false;
                                          });
                                        }
                                      });
                                    } else {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Registerpro()),
                                          (route) => false);
                                    }
                                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()),);
                                  },
                                  child: Container(
                                    //alignment: Alignment.center,
                                    color: Colors.blue,
                                    width: double.infinity,
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    padding: EdgeInsets.only(left: 130.0),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20), // <-- Radius
                                    ),
                                  ),
                                ),
                                padding: EdgeInsets.only(
                                    left: 20.0,
                                    right: 20.0,
                                    top: 40,
                                    bottom: 0),
                              ),
                              //Google sign in
                              Container(
                                child: ElevatedButton(
                                  onPressed: () async {
                                    setState(() {
                                      isloading = true;
                                    });
                                    await AuthClass()
                                        //.signWithGoogle()
                                        .signInWithGoogle()
                                        .then((UserCredential value) {
                                      final displayName = value.user!.email;

                                      print(displayName);

                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Homepage()),
                                          (route) => false);
                                    });
                                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()),);
                                  },
                                  child: Container(
                                    //alignment: Alignment.center,
                                    color: Colors.blue,
                                    width: double.infinity,
                                    child: Text(
                                      "Sign in with google",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    padding: EdgeInsets.only(left: 85.0),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20), // <-- Radius
                                    ),
                                  ),
                                ),
                                margin: EdgeInsets.only(left: 20, right: 20),
                              ),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  //Container(child:
                                  Container(
                                    margin: EdgeInsets.only(left: 80.0),
                                    child: Text("Have an account? Login"),
                                    //padding: EdgeInsets.only(left: 10.0),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 5.0),
                                  ),
                                  Center(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Login()),
                                        );
                                      },
                                      child: new RichText(
                                        text: TextSpan(
                                          text: "here",
                                          style:
                                              new TextStyle(color: Colors.blue),
                                          //textDirection: TextDirection.ltr,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
