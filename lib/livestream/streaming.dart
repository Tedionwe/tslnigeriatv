import 'package:flutter/material.dart';

class Streaming extends StatefulWidget {
  @override
  _StreamingState createState() => _StreamingState();
}

class _StreamingState extends State<Streaming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 50.0, 0.0, 0.0),
          child: Text(
            'Live Streaming',
            style: TextStyle(color: Colors.green.shade400, fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
