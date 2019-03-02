import 'package:flutter/material.dart';
import 'package:figma/exhibitionPage/page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://2.bp.blogspot.com/-B2QactQmwD0/WfSJ_0akIrI/AAAAAAAF8rM/GuJw0iIsElIbECspRgpCgvNv6E9kN61xQCLcBGAs/s1600/Achilles%2Bamong%2Bthe%2BDaughters%2Bof%2BLycomedes.jpg'),
                fit: BoxFit.cover,
                alignment: FractionalOffset(1, 0))),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 120, right: 80),
                child: Text(
                  "YOUR\nART\nMUSEUM",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, right: 110),
                child: Text(
                  "151 3rd ST \nSan Francisco, CA 94103",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 5),
                child: Container(
                  width: 230,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    border: new Border.all(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email address",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, right: 5),
                child: Container(
                  width: 230,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    border: new Border.all(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment(0.5, 0),
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Container(
                  width: 230,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.redAccent,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Exhibition()),
                      );
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 5),
                child: Align(
                  alignment: Alignment(-0.5, 0),
                  child: Text(
                    "Don't have an account?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
