import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingAccount extends StatelessWidget {
  final String? link;
  final String? text;
  final TextStyle? textStyle;
  final void Function() onPress;

  const SettingAccount(
      {Key? key, this.link, this.text, this.textStyle, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Row(
        children: [
          SvgPicture.asset('$link'),
          const SizedBox(
            width: 18,
          ),
          Text(
            '$text',
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
