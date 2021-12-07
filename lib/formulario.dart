import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  bool checking = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
        centerTitle: checking,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Checkbox(
              value: checking,
              onChanged: (value) {
                setState(() {
                  checking = !checking;
                });
              }),
          Visibility(
            visible: checking,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                RaisedButton(
                  child: Text("Click Me"),
                  onPressed: () {},
                ),
                RaisedButton(
                  child: Text("Click Me"),
                  onPressed: () {},
                ),
                RaisedButton(
                  child: Text("Click Me"),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
