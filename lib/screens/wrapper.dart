import 'package:covidist/UI/NoncontactDelivery.dart';
import 'package:covidist/UI/RequestListed.dart';
import 'package:covidist/UI/Requests.dart';
import 'package:covidist/UI/YourActivity.dart';
import 'package:covidist/UI/checkout.dart';
import 'package:covidist/UI/details_1.dart';
import 'package:covidist/UI/details_2.dart';
import 'package:covidist/UI/details_3.dart';
import 'package:covidist/UI/itemdetails.dart';
import 'package:covidist/UI/new_donation.dart';
import 'package:covidist/UI/pickup.dart';
import 'package:covidist/UI/request_donation.dart';
import 'package:covidist/UI/vegetable.dart';
import 'package:covidist/UI/yourcart.dart';
import 'package:covidist/models/user.dart';
import 'package:covidist/screens/authenticte/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    //return either home or authenticate

    if (user == null) {
      return Authenticate();
    } else {
      return noncontactdelivery();
    }
    //return youractivity();
  }
}
