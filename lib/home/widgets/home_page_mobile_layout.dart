import 'package:flutter/material.dart';
import 'package:michael_profile/home/sections/home_page_footer.dart';
import 'package:michael_profile/home/sections/home_page_left_content.dart';
import 'package:michael_profile/home/sections/home_page_right_content.dart';
import 'package:michael_profile/home/widgets/home_page_locale_widget/home_page_locale_widget.dart';

class HomePageMobileLayout extends StatelessWidget {
  const HomePageMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomePageLocaleWidget(),
          SizedBox(height: 50.0),
          HomePageLeftContent(isMobile: true),
          HomePageRightContent(isMobile: true),
          HomePageFooter()
        ],
      ),
    );
  }
}
