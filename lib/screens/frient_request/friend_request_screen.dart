import 'package:facebook/base/base_button.dart';
import 'package:facebook/base/base_color.dart';
import 'package:facebook/base/base_directional.dart';
import 'package:facebook/base/base_distance.dart';
import 'package:facebook/screens/frient_request/screens/frient_request_detail/frient_request_detail.dart';
import 'package:facebook/screens/home_screen/homescreen_detail/status_search.dart';
import 'package:flutter/material.dart';
import '../../repos/friend_request_repo.dart';

class FriendRequestScreen extends StatelessWidget {
  const FriendRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<FriendRequestRepo> friendRequestRepo = [
      FriendRequestRepo(
        'assets/images/FriendRequestAvt01.png',
        'Kiran Pawar',
        9,
        1,
      ),
      FriendRequestRepo(
        'assets/images/FriendRequestAvt02.png',
        'Chandresh Yadav',
        10,
        20,
      ),
      FriendRequestRepo(
        'assets/images/FriendRequestAvt03.png',
        'Marvin McKevirn',
        12,
        1,
      ),
      FriendRequestRepo(
        'assets/images/FriendRequestAvt04.png',
        'Bhumi Patel',
        19,
        19,
      ),
      FriendRequestRepo(
        'assets/images/FriendRequestAvt05.png',
        'Kiara Parmar',
        20,
        37,
      ),
      FriendRequestRepo(
        'assets/images/FriendRequestAvt06.png',
        'Chandani Champa',
        24,
        24,
      ),
    ];
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
                isFriendRequestScreen: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const StatusAndSearch(
                    isHomeScreen: false,
                    title: 'Friends',
                    textStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      BaseButton(
                        onTap: (){},
                        sizeBorder: 7,
                        width: 110,
                        height: 34,
                        content: 'Suggestions',
                        colorButton: AppColor.color384CFF,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      BaseButton(
                        onTap: () {},
                        sizeBorder: 7,
                        width: 110,
                        height: 34,
                        content: 'Your Friends',
                        colorButton: AppColor.color384CFF,
                      ),
                    ],
                  ),
                  const BaseDistance(),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Friend request',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '440',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColor.colorFF0606,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: AppColor.color384CFF,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 400,
                    child: ListView.builder(
                      itemCount: friendRequestRepo.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            FriendRequest(
                              nameStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.color000000),
                              name: friendRequestRepo[index].name,
                              linkAvt: friendRequestRepo[index].linkAvt,
                              timeOutRequest:
                                  friendRequestRepo[index].timeOutRequest,
                              numberOfFriendRequest:
                                  friendRequestRepo[index].mutualFriend,
                              mutualFriendStyle: TextStyle(
                                  fontSize: 14, color: AppColor.color999999),
                            ),
                          ],
                        );
                      },
                    ),
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
