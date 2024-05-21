import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:michael_profile/home/widgets/home_page_icon_button.dart';

class HomePageHeaderIcons extends StatelessWidget {
  const HomePageHeaderIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      alignment: WrapAlignment.start,
      spacing: 10.0,
      children: [
        HomePageIconButton(
          icon: FontAwesomeIcons.linkedin,
          url: 'https://www.linkedin.com/in/michaeldsa',
        ),
        HomePageIconButton(
          icon: FontAwesomeIcons.github,
          url: 'https://github.com/michael158',
        ),
        HomePageIconButton(
          icon: FontAwesomeIcons.instagram,
          url: 'https://www.instagram.com/mick_dsa',
        ),
      ],
    );
  }
}
