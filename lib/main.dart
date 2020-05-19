import 'package:covidist/UI/Done.dart';
import 'package:covidist/UI/NoncontactDelivery.dart';
import 'package:covidist/UI/Requests.dart';
import 'package:covidist/UI/YourActivity.dart';
import 'package:covidist/UI/YourActivitydone.dart';
import 'package:covidist/UI/checkout.dart';
import 'package:covidist/UI/details_1.dart';
import 'package:covidist/UI/details_2.dart';
import 'package:covidist/UI/details_3.dart';
import 'package:covidist/UI/donationlisted.dart';
import 'package:covidist/UI/itemdetails.dart';
import 'package:covidist/UI/new_donation.dart';
import 'package:covidist/UI/pickup.dart';
import 'package:covidist/UI/request_donation.dart';
import 'package:covidist/UI/requestpublished.dart';
import 'package:covidist/UI/requestreceived.dart';
import 'package:covidist/UI/thanks.dart';
import 'package:covidist/UI/vegetable.dart';
import 'package:covidist/UI/yourcart.dart';
import 'package:covidist/screens/authenticte/authenticate.dart';
import 'package:covidist/screens/wrapper.dart';
import 'package:covidist/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'UI/categories.dart';
import 'models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'OpenSans'),
        initialRoute: '/',
        routes: {
          '/': (context) => Wrapper(),
          '/checkout': (context) => CheckOut(),
          '/newDonation': (context) => NewDonation(),
          '/pickup': (context) => PickUp(),
          '/requestDonation': (context) => RequestDonation(),
          '/details1': (context) => DetailsOne(),
          '/details2': (context) => DetailsTwo(),
          '/details3': (context) => DetailsThree(),
          '/donationlisted': (context) => donationlisted(),
          '/categories': (context) => categories(),
          '/done': (context) => Done(),
          '/itemdetails': (context) => ItemDetails(),
          '/nonContactdelivery': (context) => noncontactdelivery(),
          '/requestListed': (context) => RequestDonation(),
          '/requestpublished': (context) => requestpublished(),
          '/requestreceived': (context) => RequestReceived(),
          '/requests': (context) => Requests(),
          '/vegetables': (context) => vegetable(),
          '/youactivity': (context) => youractivity(),
          '/youractivitydone': (context) => youractivitydone(),
          '/thanks': (context) => Thanks(),
          '/yourcart': (context) => YourCart(),
        },
      ),
    );
  }
}
