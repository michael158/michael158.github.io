import 'package:flutter/material.dart';
import 'package:michael_profile/colors/colors.dart';
import 'package:michael_profile/home/widgets/mac_os_terminal_window/widgets/mac_os_terminal_window_circle_action.dart';

class MacOsTerminalWindowHeader extends StatelessWidget {
  const MacOsTerminalWindowHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: MColors.borderColor,
            width: 2.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Wrap(
          alignment: WrapAlignment.start,
          spacing: 10.0,
          children: [
            MacOsTerminalWindowCircleAction(
              color: Colors.red.withOpacity(0.9),
            ),
            const MacOsTerminalWindowCircleAction(
              color: Colors.grey,
            ),
            const MacOsTerminalWindowCircleAction(
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
