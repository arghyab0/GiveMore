import 'package:covidist/UI/categories%20(1).dart';
import 'package:covidist/UI/itemdetails.dart';
import 'package:covidist/UI/new_donation.dart';
import 'package:covidist/UI/requestpublished.dart';
import 'package:covidist/UI/requestreceived.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SingingCharecter { pickup, courier }

class CheckOut extends StatefulWidget {
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  SingingCharecter _charecter = SingingCharecter.pickup;
  bool myself = false;
  bool courier = false;
  bool isSwitch = false;
  String dropdownvalue = 'Ration Id';
  List<DropdownMenuItem<String>> listDrop = [];
  String selected = null;
  String text = null;
  void loadData() {
    listDrop = [];
    listDrop.add(
      new DropdownMenuItem(
        child: new Text(
          'Ration id',
          style: TextStyle(
            color: Color.fromRGBO(45, 12, 87, 1.0),
          ),
        ),
        value: 'Ration',
      ),
    );
    listDrop.add(
      new DropdownMenuItem(
        child: new Text(
          'Organization Name',
          style: TextStyle(
            color: Color.fromRGBO(45, 12, 87, 1.0),
          ),
        ),
        value: 'Organization',
      ),
    );
  }

  // void stringchange(String str) {
  //   if (selected == 'Ration') {
  //     Text('Ration Card Id');
  //   } else if (selected == 'Organization') {
  //     Text('Organization Name');
  //   } else {
  //     Text('Choose any one from above');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    loadData();
    stringcange(selected);
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
                fontFamily: 'poppins',
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(246, 245, 245, 1.0),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Delivery address',
                    style: TextStyle(
                        color: Color.fromRGBO(45, 12, 87, 1.0),
                        fontFamily: 'poppins',
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
              padding: const EdgeInsets.all(0),
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
                  Row(
                    children: <Widget>[
                      Text(
                        "Alexander Smith\nCross\nStreet\nstate",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        strutStyle: StrutStyle(
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Delivery options',
                    style: TextStyle(
                      color: Color.fromRGBO(45, 12, 87, 1.0),
                      fontFamily: 'poppins',
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
                  Icon(
                    Icons.directions_walk,
                  ),
                  Text(
                    "I'll submit it up myself",
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 20,
                    ),
                  ),
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 35,
                  ),
                  Icon(
                    Icons.directions_bike,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "By Courier",
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 129,
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
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 95,
                ),
                child: DropdownButton(
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.055,
                  ),
                  underline: Container(
                    height: 2,
                    color: Color.fromRGBO(114, 3, 255, 1),
                  ),
                  value: selected,
                  items: listDrop,
                  hint: new Text('Choose any one'),
                  onChanged: (value) {
                    selected = value;
                    print(selected);
                    setState(() {});
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 1),
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(45, 12, 87, 1.0),
                  ),
                  labelText: text,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (val) {
                  if (val.isEmpty) {
                    return "Enter a valid Name";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Non-contact-delivery",
                    style: TextStyle(
                      color: Color.fromRGBO(45, 12, 87, 1.0),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'poppins',
                      fontSize: 20,
                    ),
                  ),
                  Switch(
                    activeColor: Color.fromRGBO(114, 3, 255, 1),
                    value: isSwitch,
                    onChanged: (value) {
                      setState(
                        () {
                          isSwitch = value;
                        },
                      );
                    },
                  )
                ],
              ),
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
                'REQUEST',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/requestreceived');
              },
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
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

  stringcange(String selected) {
    if (selected == 'Ration') {
      text = '  Ration Card ID';
    } else if (selected == 'Organization') {
      text = '  Organization Name';
    } else {
      text = '  Choose any one from the above';
    }
  }
}

moveto(index, cont) {
  if (index == 0) {
    Navigator.push(cont, MaterialPageRoute(builder: (context) => categories()));
  } else if (index == 2) {
    Navigator.push(
        cont, MaterialPageRoute(builder: (context) => NewDonation()));
  }
}
