import 'package:flutter/material.dart';
import 'package:michael_profile/home/widgets/mac_os_terminal_window/mac_os_terminal_window.dart';

class HomePageRightContent extends StatelessWidget {
  final bool isMobile;
  const HomePageRightContent({this.isMobile = false, super.key});

  @override
  Widget build(BuildContext context) {
    const double padding = 50.0;
    return Padding(
      padding: isMobile
          ? const EdgeInsets.only(top: padding)
          : const EdgeInsets.only(left: padding),
      child: const MacOsTerminalWindow(),
    );
  }
}
