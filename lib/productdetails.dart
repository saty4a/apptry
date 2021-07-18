import 'package:flutter/material.dart';
class Productdetails extends StatefulWidget {
  const Productdetails({Key? key}) : super(key: key);

  @override
  _ProductdetailsState createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  //Icon(Icons.home),
        Container(
          child :
          Padding(
            padding: EdgeInsets.only(left: 70.0),
            child:
            Row(
              children:<Widget>[
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
      stops: [0.1,0.4,0.7,0.9],
      colors: [Color(0xff3594DD),
        Color(0xff4563DB),
        Color(0xff5036D5),
        Color(0xff5B16D0),],
    ),
    ),
        child: Card(
        color: Colors.white,
          child: Container(
              child:
              Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 25.0),
                alignment: Alignment.center,
                child: Image(image: AssetImage("assets/productlaptop.jpg"),
                  fit: BoxFit.cover,),
              ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 30.0,left: 20.0),
                    child:
                  Text("Laptop",style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30.0
                  ),),),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 20.0,top: 5.0),
                    child: Text("Zairza",style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18.0,
                    ),),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 20.0),
                    child: Text(r"$ 3000",style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "RobotoBold",
                      fontSize: 25.0,
                      color: Colors.pink
                    ),),
                  ),
              Container(
                //height: 0,
                child: ElevatedButton(
                  onPressed: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()),);
                  },
                  child: Container(
                    //alignment: Alignment.center,
                    color: Colors.blue[800],
                    //height: 30.0,
                    width: double.infinity,
                    child:
                    Text("Add to Cart",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24.0,
                    ),),
                    alignment: Alignment.center,
                    //padding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                ),
                margin: EdgeInsets.only(left: 30.0,top: 100.0,right: 30.0),
                //padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 50),
              ),
              //Expanded(child:
              Container(
                //height: 0,
                //color: Colors.white,
                child: ElevatedButton(
                  onPressed: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()),);
                  },
                  child: Container(
                    //alignment: Alignment.center,
                    color: Colors.yellow,
                    //height: 0.0,
                    width: double.infinity,
                    child:
                    Text("Buy now",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24.0,
                    ),),
                    alignment: Alignment.center,
                    //padding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                ),
                margin: EdgeInsets.only(left: 30.0,right:30.0,top: 0.0,bottom: 50.0),
                //padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 50),
              ),
              //),
            ],
          ),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
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