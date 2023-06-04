import 'package:facebook/screens/frient_request/friend_request_screen.dart';
import 'package:facebook/screens/home_screen/home_screen.dart';
import 'package:facebook/screens/menu_screen/menu_screen.dart';
import 'package:facebook/screens/notification_screen/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screens/personal_screen/personal_screen.dart';
import '../screens/video_screen/video_screen.dart';

class BaseDirectional extends StatelessWidget {
  final bool isHomeScreen;
  final bool isFriendRequestScreen;
  final bool isPersionalScreen;
  final bool isVideoScreen;
  final bool isMenuScreen;
  final bool isNotificationScreen;

  const BaseDirectional({
    Key? key,
    this.isHomeScreen = false,
    this.isFriendRequestScreen = false,
    this.isPersionalScreen = false,
    this.isMenuScreen = false,
    this.isVideoScreen = false,
    this.isNotificationScreen = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            isHomeScreen
                ? null
                : Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
          },
          child: SvgPicture.asset(isHomeScreen
              ? 'assets/images/Home_screen_icon.svg'
              : 'assets/images/Home_icon.svg'),
        ),
        GestureDetector(
          onTap: () {
            isFriendRequestScreen
                ? null
                : Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FriendRequestScreen(),
                    ),
                  );
          },
          child: isFriendRequestScreen
              ? SvgPicture.asset('assets/images/Friend_request_screen_icon.svg')
              : SvgPicture.asset('assets/images/Friend_icon.svg'),
        ),
        GestureDetector(
          onTap: () {
            isPersionalScreen == true
                ? null
                : Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PersonalScreen(),
                    ),
                  );
          },
          child: isPersionalScreen == false
              ? SvgPicture.asset('assets/images/Personal_icon.svg')
              : SvgPicture.asset('assets/images/Personal_icon_clicked.svg'),
        ),
        GestureDetector(
          onTap: () {
            isVideoScreen == true
                ? null
                : Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VideoScreen(),
                    ),
                  );
          },
          child: isVideoScreen == false
              ? SvgPicture.asset('assets/images/Video_icon.svg')
              : SvgPicture.asset('assets/images/Video_icon_clicked.svg'),
        ),
        GestureDetector(
          onTap: () {
            isNotificationScreen == true
                ? null
                : Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationScreen(),
                    ),
                  );
          },
          child: isNotificationScreen == false
              ? SvgPicture.asset('assets/images/Notification_icon.svg')
              : SvgPicture.asset('assets/images/Notification_icon_clicked.svg'),
        ),
        GestureDetector(
          onTap: () {
            isMenuScreen == true
                ? null
                : Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MenuScreen(),
                    ),
                  );
          },
          child: isMenuScreen == false
              ? SvgPicture.asset('assets/images/Menu_icon.svg')
              : SvgPicture.asset('assets/images/Menu_icon_clicked.svg'),
        ),
      ],
    );
  }
}
