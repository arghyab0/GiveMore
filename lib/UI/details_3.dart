import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class DetailsThree extends StatefulWidget {
  @override
  _DetailsThreeState createState() => _DetailsThreeState();
}

class _DetailsThreeState extends State<DetailsThree> {
  bool pickup = false;
  bool destination = false;

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
          onPressed: () {},
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
                  fontFamily: 'OpenSans',
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
                  width: 30,
                ),
                SizedBox(
                  height: 280,
                  child: FAProgressBar(
                    progressColor: Colors.purpleAccent,
                    borderRadius: 8,
                    size: 18,
                    direction: Axis.vertical,
                    verticalDirection: VerticalDirection.down,
                    currentValue: 50,
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
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'Adress - 1',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(45, 12, 87, 1.0),
                        fontFamily: 'OpenSans',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Row(
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
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              'Address - 2',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromRGBO(45, 12, 87, 1.0),
                                fontFamily: 'OpenSans',
                                fontSize: 15,
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
                              pickup = newValue;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Row(
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
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              'Address - 3',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromRGBO(45, 12, 87, 1.0),
                                fontFamily: 'OpenSans',
                                fontSize: 15,
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
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Contact Details',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(45, 12, 87, 1.0),
                            fontFamily: 'OpenSans',
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
                            color: Color.fromRGBO(45, 12, 87, 1.0),
                            fontFamily: 'OpenSans',
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
                            color: Color.fromRGBO(45, 12, 87, 1.0),
                            fontFamily: 'OpenSans',
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
                          'Boston Lettuce',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(45, 12, 87, 1.0),
                            fontFamily: 'OpenSans',
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("")),
        ],
        onTap: (int index) => debugPrint("tapped item : $index"),
        backgroundColor: Color(0xFFDBD8DD),
      ),
    );
  }
}
