import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

import 'YourActivitydone.dart';

class DetailsOne extends StatefulWidget {
  @override
  _DetailsOneState createState() => _DetailsOneState();
}

class _DetailsOneState extends State<DetailsOne> {
  bool pickup = false;
  bool destination = false;
  int progress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 245, 245, 1.0),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Details',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(45, 12, 87, 1.0),
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 280,
                    child: FAProgressBar(
                      progressColor: Color.fromRGBO(114, 3, 255, 1),
                      borderRadius: 8,
                      size: 18,
                      direction: Axis.vertical,
                      verticalDirection: VerticalDirection.down,
                      currentValue: progress,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Your Location',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(45, 12, 87, 1.0),
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "Alexander Smith\nCross\nStreet",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'poppins',
                        fontSize: 15,
                      ),
                      strutStyle: StrutStyle(
                        height: 1.5,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'PickUp From',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromRGBO(45, 12, 87, 1.0),
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              "Alexander Smith\nCross\nStreet",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'poppins',
                                fontSize: 15,
                              ),
                              strutStyle: StrutStyle(
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Checkbox(
                          activeColor: Color.fromRGBO(114, 3, 255, 1),
                          value: pickup,
                          onChanged: (bool newValue) {
                            setState(() {
                              if (pickup == true) {
                                progress = 0;
                              } else {
                                progress = 50;
                              }
                              pickup = newValue;
                              print(pickup);
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Destination',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromRGBO(45, 12, 87, 1.0),
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              "Alexander Smith\nCross\nStreet",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'poppins',
                                fontSize: 15,
                              ),
                              strutStyle: StrutStyle(
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 115,
                        ),
                        Checkbox(
                          activeColor: Color.fromRGBO(114, 3, 255, 1),
                          value: destination,
                          onChanged: (bool newValue) {
                            setState(() {
                              destination = newValue;
                              if (destination == true) {
                                progress = 100;
                                pickup = true;
                              } else {
                                progress = 50;
                              }
                              print(destination);
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Contact Details',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(45, 12, 87, 1.0),
                            fontFamily: 'poppins',
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Name',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'poppins',
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '1234567890',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'poppins',
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(246, 245, 245, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://images.unsplash.com/photo-1497515114629-f71d768fd07c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1062&q=80',
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Text(
                          'Coffee',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(45, 12, 87, 1.0),
                            fontFamily: 'poppins',
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 1),
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(45, 12, 87, 1.0),
                  ),
                  labelText: "   Ration Card ID / Organization Name",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                        color: Color.fromRGBO(11, 206, 131, 1),
                      ),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 160, vertical: 15),
                    focusElevation: 10,
                    color: Color.fromRGBO(11, 206, 131, 1),
                    child: Text(
                      'VERIFY',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/thanks');
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
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
