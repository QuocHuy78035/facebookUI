import 'package:facebook/screens/menu_screen/menu_screen_detail/sub_menu.dart';
import 'package:flutter/material.dart';

import '../../base/base_color.dart';
import '../../base/base_directional.dart';
import '../home_screen/homescreen_detail/status_search.dart';
import 'menu_screen_detail/menu.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

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
                isMenuScreen: true,
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
                    title: 'Menu',
                    isHasIcon: true,
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppColor.color000000,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 547,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Shortcrust',
                                style: TextStyle(
                                  color: AppColor.color555555,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Menu(
                            title: 'Job',
                            styleTitle: TextStyle(
                              fontSize: 12,
                              color: AppColor.color384CFF,
                            ),
                            linkIcon: 'assets/images/Menu_job_icon.svg',
                          ),
                          Menu(
                            title: 'COVID-19 information Center',
                            styleTitle: TextStyle(
                              fontSize: 12,
                              color: AppColor.color384CFF,
                            ),
                            linkIcon: 'assets/images/Menu_covid_icon.svg',
                          ),
                          Menu(
                            title: 'Marketplace',
                            styleTitle: TextStyle(
                              fontSize: 12,
                              color: AppColor.color384CFF,
                            ),
                            linkIcon: 'assets/images/Menu_market_icon.svg',
                          ),
                          Menu(
                            title: 'Friends',
                            styleTitle: TextStyle(
                              fontSize: 12,
                              color: AppColor.color384CFF,
                            ),
                            linkIcon: 'assets/images/Menu_friend_icon.svg',
                          ),
                          Menu(
                            title: 'Events',
                            styleTitle: TextStyle(
                              fontSize: 12,
                              color: AppColor.color384CFF,
                            ),
                            linkIcon: 'assets/images/Menu_event_icon.svg',
                          ),
                          Menu(
                            title: 'Gaming',
                            styleTitle: TextStyle(
                              fontSize: 12,
                              color: AppColor.color384CFF,
                            ),
                            linkIcon: 'assets/images/Menu_gaming_icon.svg',
                          ),
                          Menu(
                            title: 'Weather',
                            styleTitle: TextStyle(
                              fontSize: 12,
                              color: AppColor.color384CFF,
                            ),
                            linkIcon: 'assets/images/Menu_weather_icon.svg',
                          ),
                          Menu(
                            title: 'Saved',
                            styleTitle: TextStyle(
                              fontSize: 12,
                              color: AppColor.color384CFF,
                            ),
                            linkIcon: 'assets/images/Menu_saved_icon.svg',
                          ),
                          Menu(
                            title: 'See more',
                            styleTitle: TextStyle(
                              fontSize: 12,
                              color: AppColor.color555555,
                            ),
                            isHaveIcon: false,
                            colorOutlineButton: AppColor.color555555,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SubMenu(
                      title: 'Community resources',
                      linkIcon: 'assets/images/Menu_community_icon.svg',
                    ),
                    const SubMenu(
                      title: 'Help & Support',
                      linkIcon: 'assets/images/Menu_help_icon.svg',
                    ),
                    const SubMenu(
                      title: 'Settings & Privacy',
                      linkIcon: 'assets/images/Menu_setting_icon.svg',
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
