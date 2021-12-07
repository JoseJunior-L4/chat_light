import 'package:flutter/material.dart';
import 'MConstants.dart';

class Calendario extends StatefulWidget {
  const Calendario({Key? key}) : super(key: key);

  @override
  _CalendarioState createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          meuMes(),
          Linha(),
          Linha(),
          Linha(),
          Linha(),
          Linha(),
          SizedBox(height: 25),
          Text("Intervalo de tempo"),
        ],
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Text("Aceitar", style: TextStyle(color: Colors.white)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(127, 0, 255, 1),
              Color.fromRGBO(205, 0, 255, 1)
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ),
    );
  }

  Row Linha() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        calendarItem("seg", corTextTerceario),
        calendarItem("ter", corTextTerceario),
        calendarItem("qua", corTextTerceario),
        calendarItem("qui", corTextTerceario),
        calendarItem("sex", corTextTerceario),
        calendarItem("sab", corTextTerceario),
        calendarItem("dom", corTextTerceario),
      ],
    );
  }

  Container calendarItem(String item, Color textColor) {
    return Container(
      child: CircleAvatar(
        child: Text(item, style: TextStyle(color: textColor, fontSize: 10)),
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        radius: 20,
      ),
    );
  }

  Row meuMes() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      IconButton(
          onPressed: () {}, icon: Icon(Icons.arrow_left, color: corPrimaria)),
      Text("nov de 2021", style: TextStyle(color: corPrimaria)),
      IconButton(
          onPressed: () {}, icon: Icon(Icons.arrow_right, color: corPrimaria)),
    ]);
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: corPrimaria,
      elevation: 0,
      title: Text("Data e Hora"),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_left_rounded),
      ),
    );
  }
}
