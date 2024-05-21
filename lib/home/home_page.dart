import 'package:flutter/material.dart';
import 'package:michael_profile/colors/colors.dart';
import 'package:michael_profile/home/widgets/home_page_desktop_layout.dart';
import 'package:michael_profile/home/widgets/home_page_mobile_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double _padding;
  late double _width;

  @override
  void didChangeDependencies() {
    _width = MediaQuery.sizeOf(context).width;
    _padding = _width / 20;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.baseBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: _padding),
        child: (_width <= 1352.0)
            ? const HomePageMobileLayout()
            : const HomePageDesktopLayout(),
      ),
    );
  }
}
