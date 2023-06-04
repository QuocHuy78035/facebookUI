import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../base/base_color.dart';

class SubMenu extends StatelessWidget {
  final String? title;
  final String? linkIcon;

  const SubMenu({Key? key, this.title, this.linkIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppColor.colorAAAAAA,
          height: 1,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$title',
              ),
              const SizedBox(
                width: 10,
              ),
              SvgPicture.asset(
                '$linkIcon',
              )
            ],
          ),
        ),
        Container(
          color: AppColor.colorAAAAAA,
          height: 1,
          width: double.infinity,
        ),
      ],
    );
  }
}
