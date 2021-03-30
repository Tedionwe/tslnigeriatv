import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newapp/mediaquery.dart';

class News extends StatefulWidget {
  News({Key key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey[200],
                blurRadius: 12.0,
                spreadRadius: 0.3,
                offset: Offset(
                  0,
                  0,
                ))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'LISTEN - Runtown “Soundgod” Fest\nCompilation Album',
                style: TextStyle(
                    fontFamily: 'Quicksand-Bold',
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              ),
              SizedBox(
                height: getResponsiveHeight(8),
              ),
              Text(
                'Runtown also released a Compilation Album for all the\ntracks he would be performing at the Soundgod\nFest, including the Saxophone version of his...',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              SizedBox(
                height: getResponsiveHeight(8),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'images/logo.svg',
                    height: getResponsiveHeight(10),
                  ),
                  SizedBox(
                    width: getResponsiveWidth(8),
                  ),
                  Text(
                    'TslNigeria Tv News',
                    style: TextStyle(
                      fontSize: 7,
                    ),
                  ),
                  SizedBox(
                    width: getResponsiveWidth(8),
                  ),
                  Text(
                    '3 hours ago',
                    style: TextStyle(
                      fontSize: 7,
                    ),
                  )
                ],
              )
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              'images/joeboy.jpeg',
              height: 80.0,
              width: 80.0,
            ),
          )
        ],
      ),
    );
  }
}
