import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyListView(
                img_location: 'images/coatofarms.svg',
                img_caption: 'Image 3',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 10),
                child: Text(
                  'Edo State News',
                  style: TextStyle(
                      fontFamily: 'Quicksand-Bold',
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyListView(
                img_location: 'images/talk.svg',
                img_caption: 'Image 3',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 10),
                child: Text('Business',
                    style: TextStyle(
                        fontFamily: 'Quicksand-Bold',
                        fontWeight: FontWeight.w500)),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyListView(
                img_location: 'images/lifestyle.svg',
                img_caption: 'Image 3',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 10),
                child: Text('Lifestyle',
                    style: TextStyle(
                        fontFamily: 'Quicksand-Bold',
                        fontWeight: FontWeight.w500)),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  final String img_location;
  final String img_caption;

  MyListView({this.img_location, this.img_caption});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
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
        width: 160,
        height: 160,
        margin: EdgeInsets.fromLTRB(10, 18, 2, 2),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SvgPicture.asset(
            img_location,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
