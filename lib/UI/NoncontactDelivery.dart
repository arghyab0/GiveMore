import 'package:covidist/UI/Requests.dart';
import 'package:covidist/services/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

import 'categories (1).dart';

class noncontactdelivery extends StatelessWidget {
  String con =
      'When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.';
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        //backgroundColor: Image.asset('name'),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Logout'),
            onPressed: () async {
              await _auth.signOut();
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Image.asset(
            "assets/base.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: Container(
                height: 70,
                width: 70,
                child: FloatingActionButton(
                  backgroundColor: Color(0xFF2D0C57),
                  child: Image.asset(
                    'assets/bot.png',
                    fit: BoxFit.cover,
                  ),
                  onPressed: () => launch(
                      'https://integrations.eu-gb.assistant.watson.cloud.ibm.com/web/public/8a91f772-2241-49c6-a3b0-8672318fbfb0'),
                ),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 280,
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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/boxLogo.png',
                        ),
                      ),
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
