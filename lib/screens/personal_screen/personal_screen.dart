import 'package:facebook/base/base_button.dart';
import 'package:facebook/base/base_color.dart';
import 'package:facebook/base/base_directional.dart';
import 'package:facebook/base/base_distance.dart';
import 'package:facebook/screens/personal_screen/person_screen_detail/person_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../home_screen/homescreen_detail/feed.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorWhite,
      appBar: null,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: BaseDirectional(
                isPersionalScreen: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 596,
              child: ListView(
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Image.asset(
                              'assets/images/Cover_image.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'assets/images/Avt_personal.png',
                                ),
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Sanjay Shendy',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BaseButton(
                                  onTap: () {},
                                  sizeBorder: 7,
                                  width: 150,
                                  height: 35,
                                  content: 'Add to story',
                                  colorButton: AppColor.color384CFF,
                                  contentStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                BaseButton(
                                  onTap: () {},
                                  sizeBorder: 7,
                                  width: 150,
                                  height: 35,
                                  content: 'Edit profile',
                                  contentStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  colorContent: AppColor.color000000,
                                  colorButton: AppColor.colorEEEEEE,
                                ),
                                SvgPicture.asset(
                                  'assets/images/Three_dot.svg',
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/Personal_lock_icon.svg',
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Text(
                                          'You locked your profile',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Learn more',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: AppColor.color384CFF,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const BaseDistance(),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Column(
                          children: const [
                            PersonDetail(
                              title: 'Founder and CEO at ',
                              subtitle: 'A to Z company',
                              linkIcon: 'assets/images/Personal_img01.png',
                            ),
                            PersonDetail(
                              title: 'Studied Computer Science at ',
                              subtitle: 'Harvard University',
                              linkIcon: 'assets/images/Personal_img02.png',
                              isWrap: true,
                            ),
                            PersonDetail(
                              title: 'Lives in',
                              subtitle: 'Mumbai, Maharastra',
                              linkIcon: 'assets/images/Personal_img03.png',
                            ),
                            PersonDetail(
                              title: 'From',
                              subtitle: 'Mumbai, Maharastra',
                              linkIcon: 'assets/images/Personal_img04.png',
                            ),
                            PersonDetail(
                              title: 'See your about info.',
                              subtitle: '',
                              linkIcon: 'assets/images/Personal_img05.png',
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BaseButton(
                            onTap: () {},
                            sizeBorder: 7,
                            width: 150,
                            height: 25,
                            content: 'Edit public details',
                            colorButton: AppColor.color384CFF,
                          )
                        ],
                      ),
                      const BaseDistance(),
                      FeedScreen(
                        rowStatusContent: Row(
                          children: const [
                            Text(
                              'Hello!!!',
                            ),
                          ],
                        ),
                        avtPost: 'assets/images/Avt.png',
                        subTitle: '',
                        textStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                        linkImgContentPost:
                            'assets/images/Profile_content_post.png',
                        liked: '1k',
                        comment: '400 Comments . ',
                        shared: '270 Shares',
                        linkRegimeShare:
                            'assets/images/Regime_share_public.svg',
                        name: 'Sanjay Shendy',
                        titlePost: '',
                        timeAndAddressPost: '10h ',
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
