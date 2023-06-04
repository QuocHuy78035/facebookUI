import 'package:facebook/base/base_color.dart';
import 'package:facebook/base/base_directional.dart';
import 'package:facebook/base/base_distance.dart';
import 'package:facebook/screens/home_screen/homescreen_detail/story.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'homescreen_detail/comment/comment.dart';
import 'homescreen_detail/comment/comment_by_you.dart';
import 'homescreen_detail/connection.dart';
import 'homescreen_detail/feed.dart';
import 'homescreen_detail/status_search.dart';

class HomeScreen extends StatelessWidget {
  final bool isHomeScreen;

  const HomeScreen({Key? key, this.isHomeScreen = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColor.colorWhite,
        title: Text(
          'FaceBook',
          style: TextStyle(
              color: AppColor.color384CFF,
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset('assets/images/Icon_messenger.svg'),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const BaseDirectional(
                    isHomeScreen: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 34,
                    child: StatusAndSearch(
                      onTap: (){},
                      linkAvt: 'assets/images/Avt.png',
                      contentHintText: 'What\'s on your mind, Huy?',
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Connection(),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Story(
                linkStoryAvt: 'assets/images/Avt_story.png',
                linkStory01: 'assets/images/Story01.png',
                linkStory02: 'assets/images/Story02.png',
                linkStory03: 'assets/images/Story03.png',
              ),
            ),
            const BaseDistance(),
            FeedScreen(
              liked: 'Liked by Sachin Kamble and 155 others',
              comment: '4 Comments',
              shared: '',
              linkImgContentPost: 'assets/images/Content_img01.png',
              avtPost: 'assets/images/Person_avt01.png',
              name: 'Deven mestry ',
              textStyle:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              titlePost: 'is with ',
              subTitle: 'Mahesh.',
              timeAndAddressPost: '1 h . Mumbai, Maharastra .',
              linkRegimeShare: 'assets/images/Regime_share.svg',
              rowStatusContent: Row(
                children: [
                  const Text(
                    'Old is Gold..!!',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  Image.asset('assets/images/Red_Heart.png'),
                  Image.asset('assets/images/Smiling_Face_with_Heart_Eyes.png')
                ],
              ),
              timeAddressStyle:
                  TextStyle(fontSize: 11, color: AppColor.color555555),
            ),
            const BaseDistance(),
            const FeedScreen(
              liked: 'You, Rakesh Shetty and 130 others',
              comment: '42 comment',
              shared: '',
              linkImgAvtPost: 'assets/images/Content_img02.png',
              isAvatarPost: true,
              avtPost: 'assets/images/Person_avt02.png',
              name: 'Tejas Phopale',
              textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              titlePost: ' updated his profile.',
              subTitle: '',
              timeAndAddressPost: '2 h . Delhi . ',
              linkRegimeShare: 'assets/images/Regime_share_public.svg',
            ),
            const BaseDistance(),
            FeedScreen(
              liked: 'You, Anin Kale and 205 others ',
              comment: '14 comment',
              shared: '',
              linkImgContentPost: 'assets/images/Content_img03.png',
              avtPost: 'assets/images/Person_avt03.png',
              name: 'Brooklyn Simmons ',
              textStyle:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              titlePost: 'is in ',
              subTitle: 'Dubai.',
              timeAndAddressPost: '1 d.',
              linkRegimeShare: 'assets/images/Regime_share_public.svg',
              timeAddressStyle:
                  TextStyle(fontSize: 11, color: AppColor.color555555),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              child: Column(
                children: const [
                  UserComment(
                    textStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    linkAvtCmt: 'assets/images/Cmt_01.png',
                    nameUserCmt: 'Amir Shenoy',
                    contentComment: 'Beautiful place.',
                    time: '1h',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  UserComment(
                    textStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    linkAvtCmt: 'assets/images/Cmt_02.png',
                    nameUserCmt: 'Anushree Swapnil Satam',
                    contentComment: 'Awesome.',
                    time: '1h',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 26,
                    child: CommentByYou(),
                  ),
                ],
              ),
            ),
            const BaseDistance(),
            FeedScreen(
              liked: 'You, Anfin and 85 others ',
              comment: '12 comment',
              shared: '',
              linkImgContentPost: 'assets/images/Content_img04.png',
              avtPost: 'assets/images/Person_avt04.png',
              name: 'Chetan Jairaj ',
              textStyle:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              titlePost: '',
              subTitle: '',
              timeAndAddressPost: '6 h .  Pune, Maharastra .',
              linkRegimeShare: 'assets/images/Regime_share_public.svg',
              timeAddressStyle:
                  TextStyle(fontSize: 11, color: AppColor.color555555),
              rowStatusContent: Row(
                children: [
                  const Text(
                    'Home coming ',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  Image.asset('assets/images/Red_Heart.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
