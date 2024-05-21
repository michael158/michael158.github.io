import 'package:flutter/material.dart';
import 'package:michael_profile/home/sections/home_page_footer.dart';
import 'package:michael_profile/home/sections/home_page_left_content.dart';
import 'package:michael_profile/home/sections/home_page_right_content.dart';

class HomePageMobileLayout extends StatelessWidget {
  const HomePageMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50.0),
          HomePageLeftContent(isMobile: true),
          HomePageRightContent(isMobile: true),
          HomePageFooter()
        ],
      ),
    );
  }
}
