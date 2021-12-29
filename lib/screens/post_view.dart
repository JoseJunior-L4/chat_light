import 'package:barb/MConstants.dart';
import 'package:flutter/material.dart';

class PostView extends StatefulWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  _PostViewState createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(children: [
      SizedBox(height: 20),
      statusView(size),
      SizedBox(height: 20),
      Column(
        children: [
          Container(
            color: Colors.amber,
            width: size.width,
            height: size.height * .4,
          )
        ],
      )
    ]));
  }

  Container statusView(Size size) {
    return Container(
      height: size.height * .1,
      width: size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            statusProfile(),
            statusProfile(),
            statusProfile(),
            statusProfile(),
            statusProfile(),
            statusProfile(),
            statusProfile(),
            statusProfile(),
            statusProfile(),
            statusProfile(),
            statusProfile(),
            statusProfile(),
          ],
        ),
      ),
    );
  }

  Container statusProfile() {
    return Container(
        padding: EdgeInsets.all(4), child: CircleAvatar(child: CircleAvatar()));
  }
}
