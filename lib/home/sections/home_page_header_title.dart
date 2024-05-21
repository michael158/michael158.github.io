import 'package:michael_profile/home/widgets/home_page_animated_text.dart';
import 'package:michael_profile/colors/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localization/localization.dart';
import 'package:flutter/material.dart';

class HomePageHeaderTitle extends StatelessWidget {
  final bool isMobile;
  const HomePageHeaderTitle({this.isMobile = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'home-page-hello-text'.i18n(),
          style: _textStyle,
        ),
        Text.rich(
          TextSpan(
            style: _textStyle,
            children: [
              TextSpan(
                text: '${'home-page-my-name-text'.i18n()} ',
                style: const TextStyle(
                  fontSize: 62.0,
                ),
              ),
              TextSpan(
                text: 'home-page-name-text'.i18n(),
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: MColors.primary,
                  fontSize: 62.0,
                ),
              ),
            ],
          ),
        ),
        Wrap(
          children: <Widget>[
            Text(
              '${'home-page-iam-text'.i18n()} ',
              style: _textStyle,
            ),
            HomePageAnimatedText(isMobile: isMobile),
          ],
        ),
        Text(
          'home-page-iam-description-text'.i18n(),
          style: _textStyle.copyWith(
            fontSize: 26.0,
            color: Colors.white70,
          ),
        )
      ],
    );
  }

  TextStyle get _textStyle => GoogleFonts.roboto(
        fontSize: 42.0,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      );
}
