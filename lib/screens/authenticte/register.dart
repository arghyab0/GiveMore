import 'package:covidist/UI/checkout.dart';
import 'package:covidist/services/auth.dart';
import 'package:covidist/shared/loading.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  bool loading = false;

  String email = '';
  String password = '';
  String error = '';
  String address = '';

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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 60,
                          ),
                          Text(
                            'Sign Up',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(45, 12, 87, 1.0),
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 1),
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(45, 12, 87, 1.0),
                          ),
                          labelText: "   Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (val) {
                          if (val.isEmpty) {
                            return "Enter a valid Name";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 1),
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(45, 12, 87, 1.0),
                          ),
                          labelText: "   Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (val) =>
                            val.isEmpty ? 'Enter an valid email' : null,
                        onChanged: (val) {
                          setState(() => email = val);
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 1),
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(45, 12, 87, 1.0),
                          ),
                          labelText: "   Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (val) => val.length < 6
                            ? 'Enter a password 6+ char long'
                            : null,
                        obscureText: true,
                        onChanged: (val) {
                          setState(() => password = val);
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (val) {
                          if (val.isEmpty || val.length != 10) {
                            return "Enter a valid Mobile Number";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 1),
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(45, 12, 87, 1.0),
                          ),
                          labelText: "   Phone Number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        onChanged: (val) {
                          setState(() => address = val);
                        },
                        validator: (val) {
                          if (val.isEmpty && val.length < 10) {
                            return "Enter a valid Address";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(45, 12, 87, 1.0),
                            height: 5,
                          ),
                          labelText: "Address",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Color.fromRGBO(11, 206, 131, 1),
                          ),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 125, vertical: 15),
                        focusElevation: 10,
                        color: Color.fromRGBO(11, 206, 131, 1),
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'poppins',
                          ),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            setState(() {
                              loading = true;
                            });
                            dynamic result = await _auth
                                .registerWithEmailAndPassword(email, password);
                            if (result == null) {
                              setState(() {
                                error = 'please supply a valid email';
                                loading = false;
                              });
                            }
                          }
                        },
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        error,
                        style: TextStyle(color: Colors.red, fontSize: 14.0),
                      ),
                      SizedBox(
                        height: 5,
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
                        color: Colors.white,
                        child: Text(
                          'LOG IN',
                          style: TextStyle(
                            color: Color.fromRGBO(11, 206, 131, 1),
                            fontFamily: 'poppins',
                          ),
                        ),
                        onPressed: () {
                          widget.toggleView();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
