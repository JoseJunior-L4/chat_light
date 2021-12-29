import 'package:barb/MConstants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return myAppBar();
  }
}

AppBar myAppBar() {
  return AppBar(
    backgroundColor: cor5,
    title: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        height: 35,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.35),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintStyle: TextStyle(fontSize: 14),
              hintText: "Pesquisar",
            ),
          ),
        )),
    centerTitle: true,
    leading: Center(child: Text("LOGO")),
    actions: [
      Container(
          padding: EdgeInsets.only(right: 10),
          child: CircleAvatar(
            backgroundColor: cor1,
          )),
    ],
  );
}
