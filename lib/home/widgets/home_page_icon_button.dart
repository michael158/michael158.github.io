import 'dart:js_interop_unsafe';

import 'package:flutter/material.dart';
import 'package:michael_profile/colors/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:js_interop' as js;

class HomePageIconButton extends StatelessWidget {
  final IconData icon;
  final String? url;

  const HomePageIconButton({
    required this.icon,
    this.url,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(
        icon,
        color: MColors.primary.withOpacity(0.8),
        size: 39.0,
      ),
      onPressed: _handleTapIcon,
    );
  }

  void _handleTapIcon() {
    if (url?.isNotEmpty ?? false) {
      js.globalContext.callMethod(
        'open' as js.JSAny,
        [url] as js.JSAny?,
      ); //
    }
  }
}
