import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:michael_profile/colors/colors.dart';
import 'package:michael_profile/home/widgets/home_page_animated_text.dart';

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
          'Olá,',
          style: _textStyle,
        ),
        Text.rich(
          TextSpan(
            style: _textStyle,
            children: [
              const TextSpan(
                text: 'Meu nome é ',
                style: TextStyle(
                  fontSize: 62.0,
                ),
              ),
              TextSpan(
                text: 'Michael Douglas',
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
              'Eu sou um ',
              style: _textStyle,
            ),
            HomePageAnimatedText(isMobile: isMobile),
          ],
        ),
        Text(
          'Através de códigos, transformo ideias em realidade.',
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
