import 'package:flutter/material.dart';
import '../../../../base/base_button.dart';
import '../../../../base/base_color.dart';

class FriendRequest extends StatelessWidget {
  final String? name;
  final int? numberOfFriendRequest;
  final int? timeOutRequest;
  final String? linkAvt;
  final TextStyle? nameStyle;
  final TextStyle? mutualFriendStyle;

  const FriendRequest({
    Key? key,
    this.name,
    this.numberOfFriendRequest,
    this.timeOutRequest,
    this.linkAvt,
    this.mutualFriendStyle,
    this.nameStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                Image.asset(
                  '$linkAvt',
                ),
              ],
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$name',
                        style: nameStyle,
                      ),
                      Text(
                        '${timeOutRequest}w',
                        style: mutualFriendStyle,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '$numberOfFriendRequest mutual friend',
                        style: mutualFriendStyle,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      BaseButton(
                        onTap: (){},
                        sizeBorder: 7,
                        width: 120,
                        height: 35,
                        content: 'Confirm',
                        colorButton: AppColor.color384CFF,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      BaseButton(
                        onTap: (){},
                        sizeBorder: 7,
                        width: 120,
                        height: 35,
                        content: 'Delete',
                        colorButton: AppColor.colorEEEEEE,
                        colorContent: AppColor.color555555,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
