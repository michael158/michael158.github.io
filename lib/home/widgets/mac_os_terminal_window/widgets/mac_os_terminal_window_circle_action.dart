import 'package:flutter/material.dart';

class MacOsTerminalWindowCircleAction extends StatelessWidget {
  final Color color;

  const MacOsTerminalWindowCircleAction({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    double size = 13.0;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(50.0)),
        color: color,
      ),
    );
  }
}
