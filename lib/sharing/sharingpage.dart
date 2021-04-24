import 'package:flutter/material.dart';
import 'package:newapp/colors.dart';
import 'package:newapp/components/news.dart';
import 'package:newapp/mediaquery.dart';
import 'package:newapp/horiscreen/horizontal.dart';

class SharingPage extends StatefulWidget {
  @override
  _SharingPageState createState() => _SharingPageState();
}

class _SharingPageState extends State<SharingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(250.0, 44.0, 0.0, 0.0),
            child: FlatButton(
              onPressed: () {},
              child: Text('Next'),
              textColor: Colors.white,
              color: Colors.green.shade400,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Title",
                  hintStyle: TextStyle(
                      fontSize: 25,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Post",
                hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(00.0, 270.0, 269.0, 0.0),
            child: Text(
              'ADD PHOTOS',
              style: TextStyle(fontSize: 10.0),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: FlatButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.green.shade400,
              ),
              label: Text(
                'Take photo',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
              ),
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 220.0, 10.0),
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: FlatButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.green.shade400,
              ),
              label: Text(
                'Choose Image',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
              ),
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 200.0, 10.0),
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: FlatButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.green.shade400,
              ),
              label: Text(
                'Add Video',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
              ),
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 220.0, 10.0),
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
        ],
      ),
    );
  }
}
