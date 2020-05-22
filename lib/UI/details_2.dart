import 'package:covidist/UI/YourActivitydone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class DetailsTwo extends StatefulWidget {
  @override
  _DetailsTwoState createState() => _DetailsTwoState();
}

class _DetailsTwoState extends State<DetailsTwo> {
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 260,
                    child: FAProgressBar(
                      progressColor: Colors.purpleAccent,
                      borderRadius: 8,
                      size: 18,
                      direction: Axis.vertical,
                      verticalDirection: VerticalDirection.down,
                      currentValue: 0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
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
                      "Lakdikapul\nKolkata",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'OpenSans',
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
                              "RPC Layout\nKolkata",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'OpenSans',
                                fontSize: 15,
                              ),
                              strutStyle: StrutStyle(
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
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
                              "Airport Road\nKolkata",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'OpenSans',
                                fontSize: 15,
                              ),
                              strutStyle: StrutStyle(
                                height: 1.5,
                              ),
                            ),
                          ],
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
                    padding: const EdgeInsets.all(15.0),
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
                          'Arghya Biswas',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'OpenSans',
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '6573827463',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'OpenSans',
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 80,
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
                                  'https://images.unsplash.com/photo-1556471013-0001958d2f12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=823&q=80',
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Text(
                          'Bread',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                      color: Color.fromRGBO(11, 206, 131, 1),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  focusElevation: 10,
                  color: Color.fromRGBO(11, 206, 131, 1),
                  child: Text(
                    'ACCEPT',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/details1');
                  },
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  focusElevation: 10,
                  color: Colors.red,
                  child: Text(
                    'CANCEL',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                  onPressed: () {},
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
