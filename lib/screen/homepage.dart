import 'package:flutter/material.dart';
import 'package:newapp/colors.dart';
import 'package:newapp/components/news.dart';
import 'package:newapp/mediaquery.dart';
import 'package:newapp/horiscreen/horizontal.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: brandGreen,
        toolbarHeight: 80,
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 24.0, 5.0),
            child: Expanded(
              child: CircleAvatar(
                radius: (20),
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: Image.asset(
                    'images/icon.png',
                    width: 50,
                    height: 50,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 14.0, 20.0, 0.0),
            child: SizedBox(
              width: getResponsiveWidth(270),
              child: Expanded(
                child: TextFormField(
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Search “Latest News”",
                    // If  you are using latest version of flutter then lable text and hint text shown like this
                    // if you r using flutter less then 1.20.* then maybe this is not working properly
                    labelStyle: TextStyle(color: Colors.grey),
                    focusColor: Color(0xFF0695DE),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xFF0695DE)),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.search,
                        size: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              MyList(),
              SizedBox(height: getResponsiveHeight(20)),
              News(),
              News(),
              News()
            ],
          ),
        ),
      ),
    );
  }
}
