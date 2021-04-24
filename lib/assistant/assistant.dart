import 'package:flutter/material.dart';
import 'package:newapp/call/call.dart';
import 'package:newapp/feedback/feedback.dart';

class Assistant extends StatefulWidget {
  @override
  _AssistantState createState() => _AssistantState();
}

class _AssistantState extends State<Assistant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
          child: Text(
            'Assistant',
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
        ),
        backgroundColor: Colors.green.shade400,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 180.0, 0.0),
              child: Text('How can we help you?'),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(28.0, 20.0, 20.0, 25.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Describe your issue",
                      hintStyle: TextStyle(fontSize: 14.0),
                      errorBorder: new UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.red,
                              style: BorderStyle.solid,
                              width: 1.0)),
                      focusedBorder: new UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.green,
                              style: BorderStyle.solid,
                              width: 1.0)),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.green,
                              style: BorderStyle.solid,
                              width: 3.0)),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.green.shade400,
                        ),
                      )),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 240.0, 0.0),
              child: Text('Contact Us'),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Callpage()));
                  },
                  child: CircleAvatar(
                    radius: (25),
                    backgroundColor: Colors.green.shade400,
                    child: ClipOval(
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              child: Text('Phone'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 25.0),
              child: Text(
                'Avaialble 24/7',
              ),
            ),
            Divider(),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(28.0, 10.0, 0.0, 0.0),
                    child: Icon(
                      Icons.chat_bubble,
                      color: Colors.green.shade400,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => FeedBack()));
                    },
                    child: Text('Send feedback'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
