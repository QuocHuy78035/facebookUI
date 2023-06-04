import 'package:flutter/material.dart';

class BaseControl extends StatelessWidget {
  final Row? row;
  final Color? color;
  const BaseControl({Key? key, this.row, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(7),
      ), child: row,
    );
  }
}
