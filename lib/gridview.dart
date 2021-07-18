import 'package:flutter/material.dart';
class Gv extends StatefulWidget {
  const Gv({Key? key}) : super(key: key);

  @override
  _GvState createState() => _GvState();
}

class _GvState extends State<Gv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar:
      AppBar(
        title: //Icon(Icons.home),
        Container(
          child:
          Padding(
            padding: EdgeInsets.only(left: 70.0),
            child:
            Row(
              children: <Widget>[
                Text("SkillKart", style: TextStyle( //appbar title
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                  fontSize: 25.0,
                  color: Colors.white,
                ),
                ),
                Con(),//shopping cart
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.4, 0.7, 0.9],
            colors: [Color(0xff3594DD),
              Color(0xff4563DB),
              Color(0xff5036D5),
              Color(0xff5B16D0),
            ],
          ),
        ),
        //margin: EdgeInsets.only(top: 100,right: 100),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 10.0,
              margin: EdgeInsets.all(7.0),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)
              ),
              child: Image(image: AssetImage("assets/laptop.jpg"),
                fit: BoxFit.cover,),
            );
          },
        ),
      ),
    );
  }
}
class Con extends StatefulWidget {
  //const Con({Key? key}) : super(key: key);

  @override
  _ConState createState() => _ConState();
}

class _ConState extends State<Con> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: EdgeInsets.only(left: 80.0),
          child: IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 30.0,
            ), onPressed: () {  },
          ),
        )
    );
  }
}
