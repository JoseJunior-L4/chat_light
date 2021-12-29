import 'package:barb/MConstants.dart';
import 'package:barb/components/customComponents.dart';
import 'package:flutter/material.dart';

class ChatListView extends StatefulWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  _ChatListViewState createState() => _ChatListViewState();
}

class _ChatListViewState extends State<ChatListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.wifi_protected_setup),
      ),
      body: ListView(
        children: [
          MessageTile("Jimmy Carr1", "bad joke", "20/12/22", "", 2),
          MessageTile("Jimmy Carr2", "bad joke", "20/12/22", "", 1),
          MessageTile("Jimmy Carr3", "bad joke", "20/12/22", "", 2),
          MessageTile("Jimmy Carr4", "bad joke", "20/12/22", "", 1),
          MessageTile("Jimmy Carr5", "bad joke", "20/12/22", "", 2),
          MessageTile("Jimmy Carr6", "bad joke", "20/12/22", "", 1),
          MessageTile("Jimmy Carr7", "bad joke", "20/12/22", "", 1),
        ],
      ),
    );
  }

  ListTile MessageTile(String name, String message, String date,
      String userImage, int numMessage) {
    return ListTile(
      leading: CircleAvatar(),
      title: Row(
        children: [
          Text(name, style: TextStyle(color: Colors.white)),
          Spacer(),
          Text(
            date,
            style: TextStyle(
                fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      subtitle: Row(
        children: [
          Text(message, style: TextStyle(color: Colors.white)),
          Spacer(),
          numMessage >= 1
              ? CircleAvatar(
                  radius: 12,
                  child: Text(
                    numMessage.toString(),
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ))
              : SizedBox(),
        ],
      ),
    );
  }
}
