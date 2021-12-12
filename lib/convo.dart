import 'package:flutter/material.dart';

class Convo extends StatefulWidget {
  const Convo({Key? key}) : super(key: key);

  @override
  _ConvoState createState() => _ConvoState();
}

class _ConvoState extends State<Convo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) => Text("data"))),
          Container(
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                        )),
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Icon(Icons.sentiment_satisfied_alt_outlined),
                        SizedBox(width: 20),
                        Expanded(child: TextField()),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Icon(Icons.attach_file),
                SizedBox(width: 10),
                Icon(Icons.mic),
                SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
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
