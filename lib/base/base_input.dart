import 'package:flutter/material.dart';

class BaseInput extends StatefulWidget {
  final String? content;
  final TextStyle? contentStyle;
  final Color? underlineBorderColor;
  final Color? focusedColor;
  final Color? cursorColor;
  final bool isPassword;
  final Color? suffixIconColor;
  final void Function()? onTap;
  final Icon? iconVisibility;
  final Icon? iconNoVisibility;
  final bool isPassHide;
  final void Function(String)? onChanged;

  const BaseInput(
      {Key? key,
      this.content,
      this.contentStyle,
      this.underlineBorderColor,
      this.focusedColor,
      this.cursorColor,
      this.isPassword = false,
      this.suffixIconColor,
      this.onTap,
      this.iconVisibility,
      this.iconNoVisibility,
      this.isPassHide = true,
      this.onChanged})
      : super(key: key);

  @override
  State<BaseInput> createState() => _BaseInputState();
}

class _BaseInputState extends State<BaseInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      obscureText: widget.isPassword ? widget.isPassHide : false,
      cursorColor: widget.cursorColor,
      decoration: InputDecoration(
        hintText: widget.content,
        hintStyle: widget.contentStyle,
        focusColor: widget.focusedColor,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: widget.underlineBorderColor ?? Colors.black,
          ),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: widget.underlineBorderColor ?? Colors.black,
          ),
        ),
        suffixIcon: GestureDetector(
          onTap: widget.onTap,
          child: SizedBox(
            child: widget.isPassword == true
                ? widget.isPassHide == true
                    ? Icon(
                        Icons.visibility_off_outlined,
                        color: widget.suffixIconColor,
                      )
                    : Icon(
                        Icons.visibility_outlined,
                        color: widget.suffixIconColor,
                      )
                : null,
          ),
        ),
      ),
    );
  }
}
