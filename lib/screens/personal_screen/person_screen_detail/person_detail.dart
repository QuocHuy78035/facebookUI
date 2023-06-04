import 'package:flutter/material.dart';

class PersonDetail extends StatelessWidget {
  final String? linkIcon;
  final String? title;
  final String? subtitle;
  final bool isWrap;

  const PersonDetail({
    Key? key,
    this.linkIcon,
    this.title,
    this.subtitle,
    this.isWrap = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          '$linkIcon',
        ),
        const SizedBox(
          width: 12,
        ),
        isWrap == false
            ? Row(
                children: [
                  Text(
                    '$title',
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '$subtitle',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$title',
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '$subtitle',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
        const SizedBox(
          height: 35,
        )
      ],
    );
  }
}
