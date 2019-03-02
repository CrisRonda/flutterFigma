import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;

  CustomAppBar({Key key, this.title}) : super(key: key);
  titleExpand() {
    if (title == null || title == "") {
      return Expanded(
        child: Container(),
      );
    } else {
      return Expanded(
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.redAccent,
                fontSize: 24,
                fontWeight: FontWeight.w500),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top:30),
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              // height: 100.0,
              child: Row(children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: InkWell(
                    child: Icon(Icons.menu),
                  ),
                ),
                titleExpand(),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    "THE\nART\nMUSEUM",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
