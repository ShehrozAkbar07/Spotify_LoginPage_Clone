

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color greenColor = Color(0xFF00AF19);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Form(child: _buildLoginForm())),
    );
  }

  _buildLoginForm() {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 50),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello",
                  style: TextStyle(
                      fontFamily: GoogleFonts.montserrat().fontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 75.0)),
              Text("There",
                  style: TextStyle(
                      fontFamily: GoogleFonts.montserrat().fontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 75.0)),
              const SizedBox(
                height: 50,
              ),
              Tfield('Email'),
              Tfield('Password'),
              SizedBox(height: 5.0),
              Container(
                alignment: const Alignment(1.0, 0.0),
                padding: const EdgeInsets.only(top: 15.0, left: 20.0),
                child: InkWell(
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: greenColor,
                      fontSize: 11.0,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                  height: 50.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(25.0),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation: 7.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'login',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(height: 15.0),
              Container(
                  height: 40.0,
                  color: Colors.transparent,
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Center(
                            child: Text('Login with Facebook',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                        ],
                      ))),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'New to Spotify?',
                      style: TextStyle(
                        color: greenColor,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Register',
                      style: TextStyle(
                        color: greenColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget Tfield(inp) {
  return TextFormField(
    decoration: InputDecoration(
        labelText: inp,
        labelStyle:
            TextStyle(fontSize: 12.0, color: Colors.grey.withOpacity(0.5)),
        focusedBorder: const UnderlineInputBorder()),
    obscureText: true,
  );
}
