import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../base/base_color.dart';

class Menu extends StatelessWidget {
  final String? title;
  final String? linkIcon;
  final Color? colorOutlineButton;
  final TextStyle? styleTitle;
  final bool isHaveIcon;

  const Menu({
    Key? key,
    this.title,
    this.linkIcon,
    this.colorOutlineButton,
    this.styleTitle,
    this.isHaveIcon = true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              side:
                  BorderSide(color: colorOutlineButton ?? AppColor.color384CFF),
              borderRadius: BorderRadius.circular(7),
            ),
            elevation: 0,
            backgroundColor: AppColor.colorWhite,
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$title',
                style: styleTitle,
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  isHaveIcon == true ? SvgPicture.asset('$linkIcon') : const Text('')
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
