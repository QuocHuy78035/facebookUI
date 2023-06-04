import 'package:flutter/material.dart';
import '../../base/base_color.dart';
import '../../base/base_directional.dart';
import '../home_screen/homescreen_detail/status_search.dart';
import 'notification_screen_detail/notification.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

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
                isNotificationScreen: true,
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
                    title: 'Notifications',
                    isHasIcon: true,
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppColor.color000000,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 547,
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.color00A3FF,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 17,
                          ),
                          Text('New', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),)
                        ],
                      ),
                    )
                  ),
                  NotificationDetail(
                    linkAvt: 'assets/images/NotificationAvt01.png',
                    content: 'Darrell Trivedi has a new story up.',
                    subContent: 'What’s your reaction?',
                    timeOut: '2 hours ago',
                    color: AppColor.color00A3FF,
                  ),
                  NotificationDetail(
                    linkAvt: 'assets/images/NotificationAvt02.png',
                    content: 'Darrell Trivedi has a new story up.',
                    subContent: 'What’s your reaction?',
                    timeOut: '2 hours ago',
                    color: AppColor.color00A3FFOpacity05,
                  ),
                  NotificationDetail(
                    linkAvt: 'assets/images/NotificationAvt03.png',
                    content: 'Darrell Trivedi has a new story up.',
                    subContent: 'What’s your reaction?',
                    timeOut: '2 hours ago',
                    color: AppColor.color00A3FF,
                  ),
                  NotificationDetail(
                    linkAvt: 'assets/images/NotificationAvt04.png',
                    content: 'Darrell Trivedi has a new story up.',
                    subContent: 'What’s your reaction?',
                    timeOut: '2 hours ago',
                    color: AppColor.color00A3FF,
                  ),
                  NotificationDetail(
                    linkAvt: 'assets/images/NotificationAvt05.png',
                    content: 'Darrell Trivedi has a new story up.',
                    subContent: 'What’s your reaction?',
                    timeOut: '2 hours ago',
                    color: AppColor.color00A3FFOpacity05,
                  ),
                  NotificationDetail(
                    linkAvt: 'assets/images/NotificationAvt06.png',
                    content: 'Darrell Trivedi has a new story up.',
                    subContent: 'What’s your reaction?',
                    timeOut: '2 hours ago',
                    color: AppColor.color00A3FFOpacity05,
                  ),
                  NotificationDetail(
                    linkAvt: 'assets/images/NotificationAvt05.png',
                    content: 'Darrell Trivedi has a new story up.',
                    subContent: 'What’s your reaction?',
                    timeOut: '2 hours ago',
                    color: AppColor.color00A3FF,
                  ),
                  NotificationDetail(
                    linkAvt: 'assets/images/NotificationAvt06.png',
                    content: 'Darrell Trivedi has a new story up.',
                    subContent: 'What’s your reaction?',
                    timeOut: '2 hours ago',
                    color: AppColor.color00A3FF,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
