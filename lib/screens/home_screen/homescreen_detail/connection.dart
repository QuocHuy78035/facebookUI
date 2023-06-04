import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Connection extends StatelessWidget {
  const Connection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset('assets/images/Reels.svg'),
        //SvgPicture.asset('assets/images/Room.svg'),
        Image.asset('assets/images/Room.png'),
        //SvgPicture.asset('assets/images/Group.svg'),
        Image.asset('assets/images/Group.png'),
        //SvgPicture.asset('assets/images/Live.svg')
        Image.asset('assets/images/Live.png'),
      ],
    );
  }
}
