import 'package:flutter/material.dart';
import 'package:figma/customAppBar.dart';

class DetailsExhibition extends StatefulWidget {
  DetailsExhibition({Key key}) : super(key: key);

  @override
  DetailsExhibitionState createState() {
    return new DetailsExhibitionState();
  }
}

class DetailsExhibitionState extends State<DetailsExhibition> {
  int photoindex = 0;
  List<String> photos = [
    "http://cdn8.openculture.com/wp-content/uploads/2015/03/getty-free.jpg",
    "http://www.poussiereinfo.fr/wp-content/uploads/2013/08/dustbowl-2-2.jpg",
    "https://www.artberlin.de/files/2012/04/Dorothea-Lange_Migrant-Mother_Fotografie.jpg",
    "http://www.historyplace.com/unitedstates/lange/dor12-141.jpg",
    "http://www.historyplace.com/unitedstates/lange/dor12-144.jpg"
  ];
  void _previousImage() {
    setState(() {
      photoindex = photoindex > 0 ? photoindex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoindex = photoindex < photos.length - 1 ? photoindex + 1 : photoindex;
    });
  }

  @override
  Widget build(BuildContext context) {
    String dummy= "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
    String dummy2= "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
    var _inactivephoto = Padding(
      padding: const EdgeInsets.only(left: 3, right: 3, top: 15),
      child: Container(
        height: 8,
        width: 8,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(4)),
      ),
    );
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: CustomAppBar(title: "Exhibition Preview"),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 5, left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "RETROSPECTIVE!",
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
                  "DOROTHEA\nLANGE",
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
                  "OCTOBER 15 - MARCH 18",
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 8,
                left: 15,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "FLOOR 3",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(),
                  ),
                  InkWell(
                      onTap: () {
                        _previousImage();
                      },
                      child: Icon(
                        Icons.arrow_left,
                        size: 50,
                      )),
                  Container(
                    height: 150,
                    width: 250,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(photos[photoindex]),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        _nextImage();
                      },
                      child: Icon(
                        Icons.arrow_right,
                        size: 50,
                      )),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(),
                ),
                _inactivephoto,
                _inactivephoto,
                _inactivephoto,
                _inactivephoto,
                _inactivephoto,
                Expanded(
                  child: Container(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Abandoned Dust Bowl Home",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "Celatin silver print",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "about 1935-1940",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "BIOGRAPHY",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, left: 15,right: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  dummy+dummy2+dummy+dummy2,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
