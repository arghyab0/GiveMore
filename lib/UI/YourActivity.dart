import 'package:covidist/UI/YourActivitydone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class youractivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 245, 245, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, top: 50),
            child: Text("Your Activity",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF2D0C57),
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, position) {
                return Card(
                  elevation: 0,
                  color: Color.fromRGBO(246, 245, 245, 1),
                  margin: EdgeInsets.all(20),
                  child: Stack(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Pickup from:",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF2D0C57),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("  123-London Street, Delhi",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400)),
                          Text("  Name",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400)),
                          Text("  Object",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        padding: EdgeInsets.only(right: 10),
                        child: FlatButton(
                          padding: EdgeInsets.all(8.0),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/details2');
                          },
                          child: Text(
                            "View Details",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 60,
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                              width: 130,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                color: Color(0xFF0BCE83),
                                padding: EdgeInsets.all(8.0),
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/details1');
                                },
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.check, color: Colors.white),
                                    Text(
                                      "    ACCEPT",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
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
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromRGBO(114, 3, 255, 0.5),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("")),
        ],
        onTap: (int index) => moveto(index, context),
        backgroundColor: Color.fromRGBO(246, 245, 245, 1),
      ),
    );
  }
}

moveto(index, cont) {
  if (index == 1) {
    Navigator.push(
        cont, MaterialPageRoute(builder: (context) => youractivitydone()));
  } else if (index == 2) {
    // Navigator.push(
    //     cont, MaterialPageRoute(builder: (context) => NewDonation()));
  }
}
