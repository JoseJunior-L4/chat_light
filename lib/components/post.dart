import 'package:flutter/material.dart';
import 'package:barb/MConstants.dart';

class Post extends StatefulWidget {
  final String name, desc, date, votes, comments;
  Post(
      {required this.name,
      required this.desc,
      required this.date,
      required this.votes,
      required this.comments});

  @override
  _PostState createState() => _PostState(
      name: this.name,
      desc: this.desc,
      date: this.date,
      votes: this.votes,
      comments: this.comments);
}

class _PostState extends State<Post> {
  final String name, desc, date, votes, comments;
  _PostState(
      {required this.name,
      required this.desc,
      required this.date,
      required this.votes,
      required this.comments});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostHeader(context, name, desc, date),
        PostImage(context),
        //String votes, String comments
        PostFooter(context, votes, comments),
      ],
    );
  }
}

Container PostFooter(BuildContext context, String votes, String comments) {
  return Container(
    decoration: BoxDecoration(
        color: cor2,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), bottomLeft: Radius.circular(40))),
    width: MediaQuery.of(context).size.width,
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Votes(votes),
        Comments(comments),
        IconButton(onPressed: () {}, icon: Icon(Icons.share))
      ],
    ),
  );
}

Container PostImage(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        color: cor1,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), bottomLeft: Radius.circular(40))),
    width: MediaQuery.of(context).size.width,
    height: 220,
  );
}

Row Comments(String value) {
  return Row(
    children: [
      Text(value),
      IconButton(onPressed: () {}, icon: Icon(Icons.comment))
    ],
  );
}

Row Votes(String value) {
  return Row(
    children: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.thumb_up_alt),
      ),
      Text(value),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.thumb_down_alt),
      ),
    ],
  );
}

Container PostHeader(
    BuildContext context, String name, String desc, String date) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 70,
    decoration: BoxDecoration(
        color: cor4,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), bottomLeft: Radius.circular(40))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: cor2,
          radius: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Text(desc),
          ],
        ),
        Text(date),
      ],
    ),
  );
}
