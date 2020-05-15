import 'package:covidist/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Covidist'),
        backgroundColor: Colors.purpleAccent,
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () async {
              await _auth.signOut();
            },
            icon: Icon(Icons.person),
            label: Text('Logout'),
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(246, 245, 245, 1.0),
      body: Stack(
        children: <Widget>[
          Container(height: size.height * .45,
          color: Colors.purpleAccent,
          ),
          
        ],
      ),
    );
  }
}
