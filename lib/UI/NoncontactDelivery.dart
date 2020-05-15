import 'package:covidist/UI/Requests.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'categories (1).dart';

class noncontactdelivery extends StatelessWidget {
  String con =
      'When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Container(
            child: new DecoratedBox(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assets/base.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 260,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    //borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    color: Color.fromRGBO(246, 245, 245, 1)),
                child: Column(
                  children: <Widget>[
                    // Image.asset(
                    //   'assets/logo_sort-01.png',
                    //   fit: BoxFit.fill,
                    //   height: 60,
                    // ),
                    Container(
                      width: 80,
                      height: 80,
                      margin: EdgeInsets.only(top: 15),
                      child: Image.asset('assets/logo_short-01.png'),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Non-Contact Deliveries",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF2D0C57),
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      con,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF9586A8),
                          fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 320,
                        height: 50,
                        child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: Color(0xFF0BCE83),
                            padding: EdgeInsets.all(8.0),
                            onPressed: () {
                              Navigator.of(context).pushNamed('/categories');
                            },
                            child: Text("REQUEST NOW",
                                style: TextStyle(color: Colors.white))),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 320,
                        height: 50,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Color(0xFF0BCE83),
                          padding: EdgeInsets.all(8.0),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/requests');
                          },
                          child: Text(
                            "DONATE NOW",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
