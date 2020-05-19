import 'package:covidist/UI/RequestListed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Requests.dart';

class YourCart extends StatelessWidget {
  var names = ["Tomato", "Boston Lettuce", "Potato"];
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
            child: Text("Your Donations",
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
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(top: 10, left: 200),
                            child: Text(
                              names[position],
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color.fromRGBO(45, 12, 87, 1.0),
                                  fontSize: 25),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(top: 10, left: 200),
                            child: Text(
                              'Quantity: 2',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey,
                                  fontSize: 17),
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
        currentIndex: 1,
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
  if (index == 0) {
    Navigator.push(cont, MaterialPageRoute(builder: (context) => Requests()));
  } else if (index == 2) {
    Navigator.push(
        cont, MaterialPageRoute(builder: (context) => requestlisted()));
  }
}
