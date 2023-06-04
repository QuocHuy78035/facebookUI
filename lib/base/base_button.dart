import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String? content;
  final TextStyle? contentStyle;
  final Color? colorButton;
  final Color? colorContent;
  final double sizeBorder;
  final double width;
  final double height;
  final void Function()? onTap;

  const Button({
    Key? key,
    this.content,
    this.contentStyle,
    this.colorButton,
    this.colorContent,
    required this.sizeBorder,
    required this.width,
    required this.height,
    this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: Size(width, height),
          primary: colorButton,
          onPrimary: colorContent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(sizeBorder))),
      onPressed: onTap,
      child: Text(
        '$content',
        style: contentStyle,
      ),
    );
  }
}
