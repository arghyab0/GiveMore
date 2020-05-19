import 'package:covidist/UI/RequestListed.dart';
import 'package:covidist/UI/categories.dart';
import 'package:covidist/UI/checkout.dart';
import 'package:covidist/UI/new_donation.dart';
import 'package:covidist/UI/pickup.dart';
import 'package:covidist/UI/yourcart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NoncontactDelivery.dart';

class Requests extends StatelessWidget {
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
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => noncontactdelivery()));
                  },
                ),
              ),
              Container(
                width: 55,
                height: 55,
                margin: EdgeInsets.only(top: 45, left: 260),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    color: Color(0xff524236)),
                child: new IconButton(
                  icon: new Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              )
              //////////////////////////////////IMAGE///////////////////////////////////////////////////
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Requests",
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  color: Color(0xFF2D0C57),
                  fontSize: 34,
                  fontWeight: FontWeight.bold),
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
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            names[position],
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF2D0C57),
                                fontSize: 18),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "Personal /Orag Name",
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                              fontSize: 17),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 190,
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(
                              right: 10,
                              top: 70,
                            ),
                            child: SizedBox(
                              width: 80,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                color: Color(0xFF0BCE83),
                                padding: EdgeInsets.all(8.0),
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/pickup');
                                },
                                child: Icon(Icons.check, color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(
                              right: 10,
                              top: 70,
                            ),
                            child: SizedBox(
                              width: 80,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                color: Colors.red,
                                padding: EdgeInsets.all(8.0),
                                onPressed: () {},
                                child: Icon(Icons.clear, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          )
          ////////////////////////////
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF2D0C57),
        child: Icon(
          Icons.add,
          size: 40,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NewDonation()));
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromRGBO(114, 3, 255, 0.5),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.history), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("")),
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
      cont,
      MaterialPageRoute(
        builder: (context) => requestlisted(),
      ),
    );
  }
}
