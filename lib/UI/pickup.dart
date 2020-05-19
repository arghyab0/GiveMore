import 'package:covidist/UI/Requests.dart';
import 'package:covidist/UI/donationlisted.dart';
import 'package:covidist/UI/yourcart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'categories.dart';
import 'new_donation.dart';

enum SingingCharecter { pickup, courier }

class PickUp extends StatefulWidget {
  @override
  _PickUpState createState() => _PickUpState();
}

class _PickUpState extends State<PickUp> {
  SingingCharecter _charecter = SingingCharecter.pickup;
  bool myself = false;
  bool courier = false;
  bool isSwitch = false;
  String dropdownvalue = 'Ration Id';
  List<DropdownMenuItem<String>> listDrop = [];
  String selected = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black54),
          onPressed: () => Navigator.of(context).pop(),
        ),
        automaticallyImplyLeading: true,
        backgroundColor: Color.fromRGBO(246, 245, 245, 1.0),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 75,
            ),
            Text(
              'Checkout',
              style: TextStyle(
                color: Color.fromRGBO(45, 12, 87, 1),
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(246, 245, 245, 1.0),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Pickup address',
                    style: TextStyle(
                        color: Color.fromRGBO(45, 12, 87, 1.0),
                        fontFamily: 'OpenSans',
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'CHANGE',
                      style: TextStyle(
                        color: Color.fromRGBO(114, 3, 255, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.home,
                    size: 35,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Alexander Smith\nCross\nStreet\nstate",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.normal,
                    ),
                    strutStyle: StrutStyle(
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Pickup options',
                    style: TextStyle(
                      color: Color.fromRGBO(45, 12, 87, 1.0),
                      fontFamily: 'OpenSans',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.directions_walk,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Icon(
                        Icons.directions_bike,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "I'll submit it up myself",
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "By Courier",
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Radio(
                        value: SingingCharecter.pickup,
                        groupValue: _charecter,
                        activeColor: Color.fromRGBO(114, 3, 255, 1),
                        onChanged: (SingingCharecter value) {
                          setState(
                            () {
                              _charecter = value;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Radio(
                        value: SingingCharecter.courier,
                        groupValue: _charecter,
                        activeColor: Color.fromRGBO(114, 3, 255, 1),
                        onChanged: (SingingCharecter value) {
                          setState(
                            () {
                              _charecter = value;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                  color: Color.fromRGBO(11, 206, 131, 1),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 130, vertical: 15),
              focusElevation: 10,
              color: Color.fromRGBO(11, 206, 131, 1),
              child: Text(
                'DONATE',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w800,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/donationlisted');
              },
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromRGBO(114, 3, 255, 0.5),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.history), title: Text("")),
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
        cont, MaterialPageRoute(builder: (context) => NewDonation()));
  }
}
