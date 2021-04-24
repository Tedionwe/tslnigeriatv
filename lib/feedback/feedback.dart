import 'package:flutter/material.dart';

class FeedBack extends StatefulWidget {
  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 170.0, 0.0),
              child: Text('Feedback'),
            ),
            Icon(Icons.send_sharp),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0.0, 20.0, 0.0),
              child: TextField(
                decoration: InputDecoration(hintText: "Write your feedback"),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 20.0, 5.0, 10.0),
                  child: Icon(
                    Icons.check_box,
                    color: Colors.green.shade400,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: Text('Include screenshot and logs'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
