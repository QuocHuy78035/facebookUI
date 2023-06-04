import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FeedScreen extends StatelessWidget {
  final String? avtPost;
  final String? name;
  final String? titlePost;
  final String? subTitle;
  final String? timeAndAddressPost;
  final String? linkRegimeShare;
  final bool isAvatarPost;
  final TextStyle? textStyle;
  final TextStyle? timeAddressStyle;
  final Widget? rowStatusContent;
  final String? linkImgContentPost;
  final String? linkImgAvtPost;
  final TextStyle? titleStyle;
  final String? liked;
  final String? comment;
  final String? shared;

  const FeedScreen({
    Key? key,
    this.avtPost,
    this.name,
    this.titlePost,
    this.subTitle,
    this.timeAndAddressPost,
    this.linkRegimeShare,
    this.textStyle,
    this.isAvatarPost = false,
    this.timeAddressStyle,
    this.rowStatusContent,
    this.linkImgAvtPost,
    this.linkImgContentPost,
    this.titleStyle,
    this.liked,
    this.comment,
    this.shared,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset('$avtPost'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              '$name',
                              style: textStyle,
                            ),
                            Text(
                              '$titlePost',
                              style: titleStyle,
                            ),
                            Text(
                              '$subTitle',
                              style: textStyle,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              '$timeAndAddressPost',
                              style: timeAddressStyle,
                            ),
                            SvgPicture.asset('$linkRegimeShare')
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 85,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: SvgPicture.asset(
                    'assets/images/Three_dot.svg',
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  if (rowStatusContent != null) rowStatusContent!,
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: isAvatarPost == false
                  ? Image.asset(
                      '$linkImgContentPost',
                      fit: BoxFit.fill,
                    )
                  : Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Image.asset(
                          '$linkImgAvtPost',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/Like_icon.svg'),
                      const SizedBox(
                        width: 30,
                      ),
                      SvgPicture.asset('assets/images/Comment_icon.svg'),
                      const SizedBox(
                        width: 30,
                      ),
                      SvgPicture.asset('assets/images/Message_icon.svg')
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/images/Liked_icon.svg'),
                          Image.asset('assets/images/heart.png'),
                          Text('$liked')
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '$comment',
                          ),
                          Text(
                            '$shared',
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
