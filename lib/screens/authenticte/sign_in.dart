import 'dart:ui';

import 'package:covidist/services/auth.dart';
import 'package:covidist/shared/loading.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  //text Field state
  String email = '';
  String password = '';
  String error = '';
  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo_short-01.png',
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              backgroundColor: Color.fromRGBO(246, 245, 245, 1.0),
              elevation: 0.0,
            ),
            backgroundColor: Color.fromRGBO(246, 245, 245, 1.0),
            body: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Log In',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(45, 12, 87, 1.0),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans',
                              fontSize: 34,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        validator: (val) =>
                            val.isEmpty ? 'Enter an valid email' : null,
                        onChanged: (val) {
                          setState(() => email = val);
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 1),
                          labelText: "   Email",
                          labelStyle: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(45, 12, 87, 1.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        validator: (val) => val.length < 6
                            ? 'Enter a password 6+ char long'
                            : null,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 1),
                          labelText: "   Password",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontFamily: 'OpenSans',
                            color: Color.fromRGBO(45, 12, 87, 1.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        obscureText: true,
                        onChanged: (val) {
                          setState(() => password = val);
                        },
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Color.fromRGBO(11, 206, 131, 1),
                          ),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 130, vertical: 15),
                        focusElevation: 10,
                        color: Color.fromRGBO(11, 206, 131, 1),
                        child: Text(
                          'LOG IN',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            setState(() {
                              loading = true;
                            });
                            dynamic result = await _auth
                                .signInWithEmailAndPassword(email, password);
                            if (result == null) {
                              setState(() {
                                error =
                                    'Could not sign in with those credentials';
                                loading = false;
                              });
                            }
                          }
                        },
                      ),
                      SizedBox(height: 8),
                      Text(
                        error,
                        style: TextStyle(color: Colors.red, fontSize: 14.0),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Color.fromRGBO(11, 206, 131, 1),
                          ),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                        focusElevation: 10,
                        color: Colors.white,
                        child: Text(
                          'CREATE AN ACCOUNT',
                          style: TextStyle(
                            color: Color.fromRGBO(11, 206, 131, 1),
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        onPressed: () {
                          widget.toggleView();
                        },
                      ),
                      SizedBox(height: 30,),

                      FlatButton(
                        child: Text(
                          'REGISTER AS A DISTRIBUTER',
                          style: TextStyle(
                            color: Color.fromRGBO(11, 206, 131, 1),
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/distregister');
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
