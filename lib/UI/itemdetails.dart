import 'package:covidist/UI/vegetable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemDetails extends StatelessWidget {
  String con =
      'Lettuce, (Lactuca sativa), annual leaf vegetable of the aster family (Asteraceae). Most lettuce varieties are eaten fresh and are commonly served as the base of green salads. Lettuce is generally a rich source of vitamins K and A, though the nutritional quality varies, depending on the variety.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Image(
            image: NetworkImage(
    'https://images.unsplash.com/photo-1506073881649-4e23be3e9ed0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80',
            ),
            fit: BoxFit.fill,
          ),
          Container(
                padding: EdgeInsets.only(top: 40, left: 10),
                alignment: Alignment.topLeft,
                child: new IconButton(
                  icon: new Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black54,
                  ),
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => vegetable()));
                  },
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
                  color: Color.fromRGBO(246, 245, 245, 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Boston Lettuce",
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Color(0xFF2D0C57),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "1Kg/1packet",
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Color(0xFF0BCE83),
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Cabbage lettuce vegetable",
                              style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  color: Colors.grey,
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal)),
                          SizedBox(
                            height: 20,
                          ),
                    Text(
                      "Description",
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Color(0xFF2D0C57),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      con,
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF9586A8),
                          fontSize: 17),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 170,
                        height: 50,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Color(0xFF0BCE83),
                          padding: EdgeInsets.all(8.0),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/checkout');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.shopping_cart, color: Colors.white,),
                              Text(
                              "ADD TO CART",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w800,
                              ),
                            ),],
                                        
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
