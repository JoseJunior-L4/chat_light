import 'package:barb/MConstants.dart';
import 'package:flutter/material.dart';

class GradientBackground extends StatefulWidget {
  final Widget widget;

  GradientBackground({required this.widget});
  @override
  _GradientBackgroundState createState() => _GradientBackgroundState();
}

class _GradientBackgroundState extends State<GradientBackground> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [cor1, cor2],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
    );
  }
}
