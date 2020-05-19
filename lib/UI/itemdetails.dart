import 'package:covidist/UI/checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:simple_slider/simple_slider.dart';

class ItemDetails extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<ItemDetails> {
  final _imageUrls = [
    'https://images.unsplash.com/photo-1506073881649-4e23be3e9ed0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80',
    "https://images.unsplash.com/photo-1582726458086-30eef5a7ef89?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80",
    "https://images.unsplash.com/photo-1522193582792-c66cf1cddd16?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  ];
  String con =
      'Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.';
  @override
  Widget build(BuildContext context) {
    var title = "Lettuce";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromRGBO(246, 245, 245, 1.0),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black54),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate([
                  Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(),
                        // child: ImageSliderWidget(
                        //   imageUrls: _imageUrls,
                        //   imageBorderRadius: BorderRadius.circular(0.0),
                        // ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 40, left: 10),
                        alignment: Alignment.topLeft,
                        child: new IconButton(
                          icon: new Icon(Icons.arrow_back_ios,
                              color: Colors.white),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(top: 20, left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      ),
                      //color: Colors.red),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Lettuce",
                              style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  color: Color(0xFF2D0C57),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "1kg/1packet",
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              color: Color(0xFF0BCE83),
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            height: 20,
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
                          Text("Description",
                              style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  color: Color(0xFF2D0C57),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            con,
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                color: Colors.grey,
                                fontSize: 17),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 170,
                              child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  color: Color(0xFF0BCE83),
                                  padding: EdgeInsets.all(8.0),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed('/checkout');
                                  },
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.shopping_cart,
                                          color: Colors.white),
                                      Text(
                                        "    ADD TO CART",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                          fontFamily: 'OpenSans',
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
