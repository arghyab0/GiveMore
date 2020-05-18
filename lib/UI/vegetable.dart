import 'package:covidist/UI/checkout.dart';
import 'package:covidist/UI/itemdetails.dart';
import 'package:covidist/UI/request_donation.dart';
import 'package:covidist/UI/yourcart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'new_donation.dart';

class vegetable extends StatelessWidget {
  bool _selected = false;
  var names = ["Tomato", "Lettuce", "Potato", "Carrot"];
  var img = [
    "https://images.unsplash.com/photo-1518977822534-7049a61ee0c2?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1506073881649-4e23be3e9ed0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80",
    "https://images.unsplash.com/photo-1518977676601-b53f82aba655?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1437750769465-301382cdf094?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=80"
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
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => vegetable()));
                  },
                ),
              ),
              //////////////////////////////////IMAGE///////////////////////////////////////////////////
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text("Vegetables",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF2D0C57),
                    fontSize: 34,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            height: 80,
            padding: EdgeInsets.only(top: 30, right: 20, left: 20),
            child: new TextFormField(
              decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(50.0),
                    ),
                  ),
                  filled: true,
                  prefixIcon: new Icon(Icons.search, color: Color(0xFF2D0C57)),
                  hintStyle: new TextStyle(color: Colors.grey[600]),
                  hintText: "Search",
                  fillColor: Colors.white70),
            ),
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
                      Container(
                        height: 120,
                        width: 177,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(246, 245, 245, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            image: DecorationImage(
                                image: NetworkImage(img[position]),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 200),
                        child: FlatButton(
                          padding: EdgeInsets.all(8.0),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/itemdetails');
                          },
                          child: Row(
                            children: <Widget>[
                              Text(
                                names[position],
                                style: TextStyle(
                                  color: Color.fromRGBO(45, 12, 87, 1.0),
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(
                          right: 10,
                          top: 60,
                        ),
                        child: SizedBox(
                          width: 170,
                          child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              color: Color(0xFF0BCE83),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () {
                                Navigator.of(context).pushNamed('/checkout');
                              },
                              child: Icon(Icons.shopping_cart,
                                  color: Colors.white)),
                        ),
                      )
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
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromRGBO(114, 3, 255, 0.5),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("")),
        ],
        onTap: (int index) => moveto(index, context),
        backgroundColor: Color.fromRGBO(246, 245, 245, 1),
      ),
    );
  }
}

moveto(index, cont) {
  if (index == 1) {
    Navigator.push(cont, MaterialPageRoute(builder: (context) => YourCart()));
  } else if (index == 2) {
    Navigator.push(
        cont, MaterialPageRoute(builder: (context) => RequestDonation()));
  }
}
