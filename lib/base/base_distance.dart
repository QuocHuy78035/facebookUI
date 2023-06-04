import 'package:flutter/material.dart';
import 'base_color.dart';

class BaseDistance extends StatelessWidget {
  const BaseDistance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          color: AppColor.colorAAAAAA,
          width: MediaQuery.of(context).size.width,
          height: 1,
        ),
      ],
    );
  }
}
