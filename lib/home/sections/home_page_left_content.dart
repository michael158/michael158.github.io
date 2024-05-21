import 'package:flutter/material.dart';
import 'package:michael_profile/home/sections/home_page_header_icons.dart';
import 'package:michael_profile/home/sections/home_page_header_title.dart';

class HomePageLeftContent extends StatelessWidget {
  final bool isMobile;
  const HomePageLeftContent({
    this.isMobile = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HomePageHeaderTitle(isMobile: isMobile),
        const SizedBox(height: 30.0),
        const HomePageHeaderIcons()
      ],
    );
  }
}
