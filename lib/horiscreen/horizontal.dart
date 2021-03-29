import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyListView(
            img_location: 'images/image1.jpeg',
            img_caption: 'Image 3',
          ),
          MyListView(
            img_location: 'images/image1.jpeg',
            img_caption: 'Image 3',
          ),
          MyListView(
            img_location: 'images/image1.jpeg',
            img_caption: 'Image 3',
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
    return Container(
      width: 150,
      child: InkWell(
        onTap: () {},
        child: ListTile(
          title: Image.asset(img_location),
          subtitle: Container(
              alignment: Alignment.topCenter, child: Text(img_caption)),
        ),
      ),
    );
  }
}
