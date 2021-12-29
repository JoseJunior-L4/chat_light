import 'dart:ui';

import 'package:barb/components/customComponents.dart';
import 'package:barb/screens/chat_list_view.dart';
import 'package:barb/screens/post_view.dart';
import 'package:flutter/material.dart';
import '../MConstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

final myController = new PageController();
int _page = 0;

class _HomeScreenState extends State<HomeScreen> {
  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navTap(int page) {
    myController.animateToPage(page,
        duration: Duration(milliseconds: 300), curve: Curves.easeOut);
    //myController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(),
        backgroundColor: cor1,
        body: PageView(
          onPageChanged: onPageChanged,
          controller: myController,
          children: [
            PostView(),
            ChatListView(),
            Container(color: cor2, child: Center(child: Text("Status"))),
          ],
        ),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _page,
          onTap: navTap,
          items: [
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("home"),
              selectedColor: Colors.red,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.chat),
              title: Text("chats"),
              selectedColor: Colors.blue,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.pause_presentation),
              title: Text("posts"),
              selectedColor: Colors.green,
            )
          ],
        ));
  }

  BottomNavigationBarItem BottomNavItem(
      String title, int index, IconData iconData) {
    return BottomNavigationBarItem(
        title: Text(
          title,
          style: TextStyle(
              fontSize: labelFontSize, color: _page == index ? cor5 : cor4),
        ),
        icon: Icon(
          iconData,
          color: _page == index ? cor5 : cor4,
        ));
  }
}
