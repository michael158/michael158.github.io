import 'package:flutter/material.dart';
import 'package:michael_profile/colors/colors.dart';
import 'package:michael_profile/home/widgets/mac_os_terminal_window/widgets/mac_os_terminal_window_body.dart';
import 'package:michael_profile/home/widgets/mac_os_terminal_window/widgets/mac_os_terminal_window_header.dart';

class MacOsTerminalWindow extends StatelessWidget {
  const MacOsTerminalWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxHeight: 500.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: MColors.borderColor,
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MacOsTerminalWindowHeader(),
          MacOsTerminalWindowBody(),
        ],
      ),
    );
  }
}
