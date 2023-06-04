import 'package:facebook/base/base_color.dart';
import 'package:flutter/material.dart';

class UserComment extends StatelessWidget {
  final String? linkAvtCmt;
  final String? nameUserCmt;
  final String? contentComment;
  final TextStyle? textStyle;
  final String? time;

  const UserComment({
    Key? key,
    this.linkAvtCmt,
    this.nameUserCmt,
    this.contentComment,
    this.textStyle,
    this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [Image.asset('$linkAvtCmt')],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: AppColor.colorDDDDDD,
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$nameUserCmt',
                      style: textStyle,
                    ),
                    Text('$contentComment')
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('$time'),
                const SizedBox(
                  width: 14,
                ),
                Text(
                  'Like',
                  style: TextStyle(color: AppColor.color555555),
                ),
                const SizedBox(
                  width: 14,
                ),
                Text(
                  'Reply',
                  style: TextStyle(color: AppColor.color555555),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
