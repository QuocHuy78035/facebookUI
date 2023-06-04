import 'package:flutter/material.dart';

import 'base_color.dart';

class SearchButton extends StatelessWidget {
  final void Function()? onTap;
  const SearchButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 34,
          height: 34,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.colorEEEEEE),
          child: const Icon(
            Icons.search,
            size: 40,
          )),
    );
  }
}
