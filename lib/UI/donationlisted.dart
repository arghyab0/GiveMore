import 'package:covidist/UI/new_donation.dart';
import 'package:covidist/UI/pickup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class donationlisted extends StatelessWidget {
  String con =
      'As soon as a donor accepts your request for donation, the items will be shipped to you. Cheers :)';
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Image.asset("assets/base.png"),
          Column(
            children: <Widget>[
              SizedBox(
                height: 350,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  //borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  color: Color.fromRGBO(246, 245, 245, 1),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 80,
                      height: 80,
                      margin: EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          color: Colors.white),
                      child: Image.asset('assets/boxLogo.png'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Donation Listed!",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF2D0C57),
                            fontSize: 34,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
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
                      height: 60,
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
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/nonContactdelivery',
                                (Route<dynamic> route) => false);
                          },
                          child: Text(
                            "BACK TO HOME",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 210,
                    ),
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
