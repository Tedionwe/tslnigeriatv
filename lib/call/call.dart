import 'package:flutter/material.dart';

class Callpage extends StatefulWidget {
  @override
  _CallpageState createState() => _CallpageState();
}

class _CallpageState extends State<Callpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        title: Row(
          children: [
            Text('Request callback'),
            Padding(
              padding: const EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 0.0),
              child: Icon(Icons.send_sharp),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
            child: TextField(
              decoration: InputDecoration(hintText: "Full Name"),
            ),
          ),
          Row(
            children: [
              Container(
                child: TextField(
                  decoration: InputDecoration(hintText: "number"),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
