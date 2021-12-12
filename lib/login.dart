import 'package:barb/MConstants.dart';
import 'package:barb/posts.dart';
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
String user = "", pass = "";

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
      child: SingleChildScrollView(
        child: Container(
          color: cor3,
          child: Column(
            children: [
              SizedBox(height: 20),
              LoginField("Username", Icons.search, (value) {
                user = value;
                print(user);
              }),
              LoginField("Password", Icons.lock, (value) {
                pass = value;
                print(pass);
              }),
              SizedBox(height: 20),
              LoginBtn("Login"),
              TextButton(
                  onPressed: () {},
                  child: Text("Don't have an account? Click here")),
              LoginFooter()
            ],
          ),
        ),
      ),
    );
  }

  Row LoginFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: MediaQuery.of(context).size.width * .005),
        CircleAvatar(
          child: Icon(Icons.facebook_rounded),
        ),
        CircleAvatar(
          child: Icon(Icons.g_mobiledata),
        ),
        CircleAvatar(
          child: Icon(Icons.star_border_purple500_outlined),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * .005),
      ],
    );
  }

  Card LoginField(
      String text, IconData iconData, Function(String test) _pressed) {
    return Card(
        color: Colors.white.withOpacity(.3),
        elevation: 0,
        margin: EdgeInsets.fromLTRB(30, 10, 30, 5),
        child: TextFormField(
            onChanged: _pressed,
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
      color: cor4,
      width: size.width,
      height: size.height * .4,
      child: Center(child: Text("BluLight")),
    );
  }

  Widget LoginBtn(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(text),
        FloatingActionButton(
          elevation: 0,
          onPressed: () {
            print("User: " + user);
            print("Pass: " + pass);
            if (user == "James" && pass == "James") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PostView()),
              );
            }
          },
          backgroundColor: cor4,
          child: Icon(Icons.arrow_right_alt),
        ),
      ],
    );
  }
}
