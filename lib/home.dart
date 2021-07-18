import 'package:flutter/material.dart';
//import 'package:ecommerce/gridview.dart';
import 'package:ecommerce/productdetails.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget gridview = Gv();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        title: //Icon(Icons.home),
            Container(
          child: Padding(
            padding: EdgeInsets.only(left: 70.0),
            child: Row(
              children: <Widget>[
                Text(
                  "SkillKart",
                  style: TextStyle(
                    //appbar title
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
                Con(), //shopping cart
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: GestureDetector(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: Text(
                          "View",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ),
                      Container(
                        //alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(left: 200.0),
                        child: IconButton(
                          icon: Icon(
                            Icons.apps, //grid view icon
                          ),
                          onPressed: () {
                            setState(() {
                              gridview = Gv();
                            });
                          },
                        ),
                      ),
                      Container(
                          //margin: EdgeInsets.only(top: 30.0),
                          child: IconButton(
                        icon: Icon(
                          Icons.format_list_bulleted, //list view icon
                        ),
                        onPressed: () {
                          setState(() {
                            gridview = Lv();
                          });
                        },
                      )),
                    ],
                  )),
              Expanded(
                child: Container(
                  child: gridview,
                ),
              ),
            ],
          ),
          onTap: () {
            setState(() {
              gridview = productdetails();
            });
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
        ),
        onPressed: () {},
      ),
    ));
  }
}

class Gv extends StatefulWidget {
  //const Gv({Key? key}) : super(key: key);

  @override
  _GvState createState() => _GvState();
}

class _GvState extends State<Gv> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child:
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Image(
                      image: AssetImage("assets/laptop.jpg"),
                      //fit: BoxFit.cover,
                      height: 0.0,
                      width: 0.0,
                    ),
                    elevation: 2.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 7.0, horizontal: 7.0),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(13.0),
                    ),
                  );
                }),
        margin: EdgeInsets.only(left: 7.0, right: 10.0),
    );
  }
}

class Lv extends StatefulWidget {
  const Lv({Key? key}) : super(key: key);

  @override
  _LvState createState() => _LvState();
}

class _LvState extends State<Lv> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[800],
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return new Container(
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Container(
                  height: 150,
                  color: Colors.white,
                  //width: MediaQuery.of(context).size.width * 0.55,
                  child: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Image(
                            image: AssetImage(
                              "assets/laptops.jpg",
                            ),
                          ),
                          padding: EdgeInsets.only(left: 10),
                        ),
                        new Column(
                          //mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 30.0, top: 20.0),
                              child: Text(
                                "Laptop",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5.0, left: 30.0),
                              child: new Text(
                                "zairza",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 30.0, left: 30.0),
                              child: new Text(
                                r"$3000",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Productdetails()),
                      );
                    },
                  ),
                ),
                elevation: 2.0,
                margin: EdgeInsets.all(7.0),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(7.0),
                ),
              ),
              margin: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            );
          },
        ),
    );
  }
}

class productdetails extends StatefulWidget {
  const productdetails({Key? key}) : super(key: key);

  @override
  _productdetailsState createState() => _productdetailsState();
}

class _productdetailsState extends State<productdetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[800],
        child: Card(
          color: Colors.white,
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 25.0),
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage("assets/productlaptop.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 30.0, left: 20.0),
                  child: Text(
                    "Laptop",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 30.0),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 20.0, top: 5.0),
                  child: Text(
                    "Zairza",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 20.0),
                  child: Text(
                    r"$ 3000",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "RobotoBold",
                        fontSize: 25.0,
                        color: Colors.pink),
                  ),
                ),
                Container(
                  //height: 0,
                  child: ElevatedButton(
                    onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()),);
                    },
                    child: Container(
                      //alignment: Alignment.center,
                      color: Colors.blue[800],
                      //height: 30.0,
                      width: double.infinity,
                      child: Text(
                        "Add to Cart",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
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
                  margin: EdgeInsets.only(left: 30.0, top: 60.0, right: 30.0),
                  //padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 50),
                ),
                Container(
                  //height: 0,
                  //color: Colors.white,
                  child: ElevatedButton(
                    onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()),);
                    },
                    child: Container(
                      //alignment: Alignment.center,
                      color: Colors.yellow,
                      //height: 0.0,
                      width: double.infinity,
                      child: Text(
                        "Buy now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
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
                  margin: EdgeInsets.only(
                      left: 30.0, right: 30.0, top: 0.0, bottom: 50.0),
                  //padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 50),
                ),
                //),
              ],
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
    );
  }
}
