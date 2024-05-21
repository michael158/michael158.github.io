import 'package:flutter/material.dart';
import 'package:michael_profile/colors/colors.dart';
import 'package:michael_profile/home/widgets/home_page_desktop_layout.dart';
import 'package:michael_profile/home/widgets/home_page_mobile_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.sizeOf(context).width / 20;

    return Scaffold(
      backgroundColor: MColors.baseBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: LayoutBuilder(
          builder: (context, constraints) {
            double width = MediaQuery.sizeOf(context).width;
            if (width <= 1352) return const HomePageMobileLayout();
            return const HomePageDesktopLayout();
          },
        ),
      ),
    );
  }
}
