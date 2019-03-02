import 'package:flutter/material.dart';
import 'package:figma/customAppBar.dart';
import 'detailsExhibition.dart';
class Exhibition extends StatefulWidget {
  Exhibition({Key key}) : super(key: key);

  _ExhibitionState createState() => _ExhibitionState();
}

class _ExhibitionState extends State<Exhibition> {
  @override
  Widget build(BuildContext context) {
    ListView listDrawer = ListView(
      children: <Widget>[
        draweritem("Search", Icons.search),
        draweritem("Exhibitions & Events", Icons.grid_on),
        draweritem("Artists & Artworks", Icons.art_track),
        draweritem("Collections", Icons.collections_bookmark),
        draweritem("Plan Your Visit", Icons.event_available),
        draweritem("Become a Member", Icons.card_membership),
        draweritem("Shop", Icons.card_giftcard)
      ],
    );
    Drawer drawer = Drawer(
      child: Container(
        color: Colors.redAccent,
        child: listDrawer,
      ),
    );
    return Scaffold(
      drawer: drawer,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image(
              image: NetworkImage(
                  'https://2.bp.blogspot.com/-B2QactQmwD0/WfSJ_0akIrI/AAAAAAAF8rM/GuJw0iIsElIbECspRgpCgvNv6E9kN61xQCLcBGAs/s1600/Achilles%2Bamong%2Bthe%2BDaughters%2Bof%2BLycomedes.jpg'),
              fit: BoxFit.fitWidth,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "EXHIBITION",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "MASTERS\nOLD AND\nNEW",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12, left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "APRIL 15 - SEPTEMBER 20",
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "FLOOR 5",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Center(
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  "Plan Your  Visit",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.redAccent,
                minWidth: 230,
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 10, left: 10),
                    child: Icon(
                      Icons.place,
                      color: Colors.redAccent,
                      size: 35,
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "153 3rd St\nSan Francisco, CA 94103",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 15,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10, left: 12),
                    child: Icon(
                      Icons.access_time,
                      color: Colors.redAccent,
                      size: 35,
                    )),
                Padding(
                  padding: EdgeInsets.only(right: 10, top: 10),
                  child: Text(
                    "Open today\n10:00am - 5:30pm",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 15,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }

  navigatorDrawer(label) {
    switch (label) {
      // case "Search":
      //   Navigator.push(context,
      //       MaterialPageRoute(builder: (context) => DetailsExhibition()));
      //   break;
      case "Exhibitions & Events":
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailsExhibition()));
        break;
      // case "Artists & Artworks":
      // Navigator.push(context,
      //     MaterialPageRoute(builder: (context) => DetailsExhibition()));
      // break;
      // case "Collections":
      // Navigator.push(context,
      //     MaterialPageRoute(builder: (context) => Collection()));
      // break;
      // case "Plan Your Visit":
      // Navigator.push(context,
      //     MaterialPageRoute(builder: (context) => DetailsExhibition()));
      // break;
      // case "Become a Member":
      // Navigator.push(context,
      //     MaterialPageRoute(builder: (context) => DetailsExhibition()));
      // break;
      // case "Shop":
      // Navigator.push(context,
      //     MaterialPageRoute(builder: (context) => DetailsExhibition()));
      // break;
      default:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailsExhibition()));
        break;
    }
  }

  Padding draweritem(String label, IconData iconlabel) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20),
      child: InkWell(
        onTap: () {
          navigatorDrawer(label);
        },
        child: Row(
          children: <Widget>[
            Icon(
              iconlabel,
              size: 35,
              color: Colors.white,
            ),
            Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  label,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
