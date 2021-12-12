import 'package:barb/MConstants.dart';
import 'package:flutter/material.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        child: ListView(children: [
          Chat("Ugandan Knuckles", "Do you know tha way", "20/12/14"),
        ]));
  }

  Widget Chat(String name, String text, String date) {
    return GestureDetector(
      onTap: () {
        print("Hi, my name is " + name);
      },
      child: ListTile(
        title: Text(name),
        subtitle: Text(text),
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: cor3,
        ),
        trailing: Text(date),
      ),
    );
  }
}
