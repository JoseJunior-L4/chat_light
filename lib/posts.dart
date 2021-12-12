import 'package:barb/MConstants.dart';
import 'package:barb/chatView.dart';
import 'package:barb/components/post.dart';
import 'package:flutter/material.dart';

class PostView extends StatefulWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  _PostViewState createState() => _PostViewState();
}

final myController = new PageController();

class _PostViewState extends State<PostView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: cor2,
      ),
      body: PageView(
        controller: myController,
        children: [
          PostScreen(context),
          Container(
            color: cor1,
            child: ChatView(),
          ),
        ],
      ),
    );
  }

  SingleChildScrollView PostScreen(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BodyHeader(context),
          SizedBox(height: 20),
          Post(
            name: "Luke Skywalker",
            desc: "Return of the Jedi",
            date: "20/05/98",
            votes: "11",
            comments: "22",
          ),
        ],
      ),
    );
  }

  Container BodyHeader(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 20),
            ContactStatus(),
            SizedBox(width: 20),
            ContactStatus(),
            SizedBox(width: 20),
            ContactStatus(),
            SizedBox(width: 20),
            ContactStatus(),
          ],
        ),
      ),
    );
  }

  CircleAvatar ContactStatus() {
    return CircleAvatar(
      backgroundColor: cor2,
      radius: 40,
      child: CircleAvatar(
        backgroundColor: cor6,
        radius: 35,
        child: Container(
          alignment: Alignment.bottomRight,
          child: Container(
            width: 30,
            height: 30,
            child: FloatingActionButton(
              elevation: 0,
              backgroundColor: cor2,
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
