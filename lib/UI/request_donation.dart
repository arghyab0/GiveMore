import 'package:covidist/UI/checkout.dart';
import 'package:covidist/UI/vegetable.dart';
import 'package:flutter/material.dart';

class RequestDonation extends StatefulWidget {
  @override
  _RequestDonationState createState() => _RequestDonationState();
}

class _RequestDonationState extends State<RequestDonation> {
  int _n = 0;
  @override
  Widget build(BuildContext context) {
    void add() {
      setState(() {
        _n++;
      });
    }

    void minus() {
      setState(() {
        if (_n != 0) _n--;
      });
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color.fromRGBO(246, 245, 245, 1.0),
        leading: IconButton(
          color: Colors.black54,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Color.fromRGBO(246, 245, 245, 1.0),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Request Donation',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(45, 12, 87, 1.0),
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 1),
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(45, 12, 87, 1.0),
                    ),
                    labelText: "   Title",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (val) {
                    if (val.isEmpty) {
                      return "Enter a valid Title";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 1),
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(45, 12, 87, 1.0),
                    ),
                    labelText: "   Tags",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (val) {
                    if (val.isEmpty) {
                      return "Enter a valid Tags";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Quantity:',
                        style: TextStyle(
                          color: Color.fromRGBO(45, 12, 87, 1.0),
                          fontFamily: 'poppins',
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Text(
                      '$_n',
                      style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'poppins',
                        color: Color.fromRGBO(45, 12, 87, 1.0),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            FloatingActionButton(
                              heroTag: '1',
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.0),
                                ),
                              ),
                              onPressed: add,
                              child: Icon(
                                Icons.add,
                                color: Color.fromRGBO(45, 12, 87, 1.0),
                              ),
                              backgroundColor: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              heroTag: '2',
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.0),
                                ),
                              ),
                              onPressed: minus,
                              child: new Icon(
                                IconData(0xe15b, fontFamily: 'MaterialIcons'),
                                color: Color.fromRGBO(45, 12, 87, 1.0),
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (val) {
                    if (val.isEmpty && val.length < 10) {
                      return "Enter a valid Description";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(45, 12, 87, 1.0),
                      height: 5,
                    ),
                    labelText: "Why do you need it ?",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 1),
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(45, 12, 87, 1.0),
                    ),
                    labelText: "   Name/Organization Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (val) {
                    if (val.isEmpty) {
                      return "Enter a valid Name/Organization Id";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                      color: Color.fromRGBO(11, 206, 131, 1),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 92, vertical: 15),
                  focusElevation: 10,
                  color: Color.fromRGBO(11, 206, 131, 1),
                  child: Text(
                    'PUBLISH REQUEST',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/requestpublished');
                  },
                ),
                SizedBox(height: 8.0),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
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
  if (index == 0) {
    Navigator.push(cont, MaterialPageRoute(builder: (context) => vegetable()));
  } else if (index == 1) {
    Navigator.push(cont, MaterialPageRoute(builder: (context) => CheckOut()));
  }
}
