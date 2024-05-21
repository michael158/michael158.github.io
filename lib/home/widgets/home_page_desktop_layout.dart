import 'package:flutter/material.dart';
import 'package:michael_profile/home/sections/home_page_footer.dart';
import 'package:michael_profile/home/sections/home_page_left_content.dart';
import 'package:michael_profile/home/sections/home_page_right_content.dart';

class HomePageDesktopLayout extends StatelessWidget {
  const HomePageDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Flexible(flex: 1, child: HomePageLeftContent()),
              Flexible(flex: 1, child: HomePageRightContent()),
            ],
          ),
        ),
        HomePageFooter()
      ],
    );
  }
}
