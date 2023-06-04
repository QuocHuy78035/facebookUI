import 'package:facebook/base/base_color.dart';
import 'package:facebook/base/base_directional.dart';
import 'package:flutter/material.dart';

import '../../base/base_control.dart';
import '../home_screen/homescreen_detail/feed.dart';
import '../home_screen/homescreen_detail/status_search.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: BaseDirectional(
                isVideoScreen: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  StatusAndSearch(
                    isHomeScreen: false,
                    title: 'Watch',
                    isHasIcon: false,
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppColor.color000000,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  BaseControl(
                    color: AppColor.color384CFF,
                    row: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'For you',
                              style: TextStyle(
                                  color: AppColor.colorWhite, fontSize: 12),
                            ),
                            Container(
                              width: 20,
                              height: 1,
                              color: AppColor.colorWhite,
                            )
                          ],
                        ),
                        Text(
                          'Live',
                          style: TextStyle(
                              color: AppColor.colorWhite, fontSize: 12),
                        ),
                        Text(
                          'Music',
                          style: TextStyle(
                              color: AppColor.colorWhite, fontSize: 12),
                        ),
                        Text(
                          'Gaming',
                          style: TextStyle(
                              color: AppColor.colorWhite, fontSize: 12),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                              color: AppColor.colorWhite, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            FeedScreen(
              liked: '10K',
              comment: '400 Comments .',
              shared: ' 270 Shares ',
              linkImgContentPost: 'assets/images/VideoScreen_content01.png',
              avtPost: 'assets/images/Person_avt01.png',
              name: 'BasicHacker . ',
              textStyle:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              titlePost: 'Follow',
              titleStyle: TextStyle(color: AppColor.color384CFF),
              subTitle: '',
              timeAndAddressPost: '10h.',
              linkRegimeShare: 'assets/images/Regime_share.svg',
              rowStatusContent: Row(
                children: [
                  const Text(
                    'Free Fire Live...',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  Image.asset('assets/images/Red_Heart.png'),
                ],
              ),
              timeAddressStyle:
                  TextStyle(fontSize: 11, color: AppColor.color555555),
            ),
          ],
        ),
      ),
    );
  }
}
