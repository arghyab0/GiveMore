import 'package:covidist/UI/checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Requests.dart';

class requestlisted extends StatelessWidget {
  var names = ["Tomato", "Lettuce", "Potato"];
  var img = [
    "https://images.unsplash.com/photo-1518977822534-7049a61ee0c2?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1506073881649-4e23be3e9ed0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80",
    "https://images.unsplash.com/photo-1518977676601-b53f82aba655?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 245, 245, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 40, left: 10),
                alignment: Alignment.topLeft,
                child: new IconButton(
                  icon: new Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFF2D0C57),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              //////////////////////////////////IMAGE///////////////////////////////////////////////////
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text("Requests",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF2D0C57),
                    fontSize: 34,
                    fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, position) {
                return Card(
                  elevation: 0,
                  color: Color.fromRGBO(246, 245, 245, 1),
                  margin: EdgeInsets.all(20),
                  child: Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            height: 90,
                            width: 147,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(246, 245, 245, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                image: DecorationImage(
                                    image: NetworkImage(img[position]),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(names[position],
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF2D0C57),
                                  fontSize: 18)),
                        ],
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        padding: EdgeInsets.only(top: 10, right: 10),
                        child: Text("Personal /Orag Name",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.grey,
                                fontSize: 17)),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 70,
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                              width: 170,
                              child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  color: Color(0xFF0BCE83),
                                  padding: EdgeInsets.all(8.0),
                                  onPressed: () {
//                                Navigator.push(
//                                    context,
//                                    MaterialPageRoute(
//                                        builder: (context) => Done()));
                                  },
                                  child: Text(
                                    "    DONATE",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          ////////////////////////////
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromRGBO(114, 3, 255, 0.5),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("")),
        ],
        onTap: (int index) => moveto(index, context),
        backgroundColor: Color.fromRGBO(246, 245, 245, 1),
      ),
    );
  }
}

moveto(index, cont) {
  if (index == 0) {
    Navigator.push(cont, MaterialPageRoute(builder: (context) => Requests()));
  } else if (index == 1) {
    Navigator.push(cont, MaterialPageRoute(builder: (context) => CheckOut()));
  }
}
