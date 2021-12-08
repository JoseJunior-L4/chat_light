import 'package:barb/MConstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

final controller = new PageController();
Color myColor = cor1;

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          LoginHeader(size),
          LoginBody(),
        ],
      ),
    );
  }

  Expanded LoginBody() {
    return Expanded(
      child: Container(
        color: cor3,
        child: Column(
          children: [
            SizedBox(height: 20),
            LoginField("Username", Icons.search),
            LoginField("Password", Icons.lock),
            SizedBox(height: 20),
            LoginBtn("Login", 100),
            TextButton(
                onPressed: () {},
                child: Text("Don't have an account? Click here")),
            Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.facebook_rounded),
                ),
                CircleAvatar(
                  child: Icon(Icons.g_mobiledata),
                ),
                CircleAvatar(
                  child: Icon(Icons.star_border_purple500_outlined),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Card LoginField(String text, IconData iconData) {
    return Card(
        color: Colors.white.withOpacity(.3),
        elevation: 0,
        margin: EdgeInsets.fromLTRB(30, 10, 30, 5),
        child: TextFormField(
            decoration: InputDecoration(
          hintText: text,
          prefixIcon: Icon(iconData),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintStyle: TextStyle(),
        )));
  }

  Container LoginHeader(Size size) {
    return Container(
      color: Colors.lightBlue,
      width: size.width,
      height: size.height * .4,
      child: Center(child: Text("BluLight")),
    );
  }

  GestureDetector LoginBtn(String text, double hor) {
    return GestureDetector(
      onTap: () {
        setState(() {
          myColor = Colors.lightGreen;
          print("object");
        });
      },
      child: AnimatedContainer(
        padding: EdgeInsets.symmetric(horizontal: hor, vertical: 15),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        duration: Duration(milliseconds: 50),
        child: Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
        decoration: BoxDecoration(
            color: myColor, borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
