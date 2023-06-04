import 'package:facebook/base/base_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationDetail extends StatelessWidget {
  final String? content;
  final String? subContent;
  final String? timeOut;
  final String? linkAvt;
  final Color? color;

  const NotificationDetail({
    Key? key,
    this.content,
    this.subContent,
    this.linkAvt,
    this.timeOut,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 17),
          decoration: BoxDecoration(color: color),
          child: Row(
            children: [
              Column(
                children: [
                  Image.asset('$linkAvt'),
                ],
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '$content',
                          style: const TextStyle(fontSize: 12),
                        ),
                        SvgPicture.asset(
                          'assets/images/Three_dot_horizontal.svg',
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '$subContent',
                          style: const TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '$timeOut',
                          style: TextStyle(fontSize: 12, color: AppColor.color555555),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
