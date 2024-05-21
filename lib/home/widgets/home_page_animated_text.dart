import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:michael_profile/colors/colors.dart';

class HomePageAnimatedText extends StatelessWidget {
  final bool isMobile;

  const HomePageAnimatedText({this.isMobile = false, super.key});

  @override
  Widget build(BuildContext context) {
    if (isMobile) return Text(_defaultText, style: _textStyle);

    return AnimatedTextKit(
      repeatForever: true,
      animatedTexts: [
        TypewriterAnimatedText(
          _defaultText,
          textStyle: _textStyle,
          speed: _animationDuration,
        ),
        TypewriterAnimatedText(
          'Mobile Developer',
          textStyle: _textStyle,
          speed: _animationDuration,
        ),
        TypewriterAnimatedText(
          'Web Developer',
          textStyle: _textStyle,
          speed: _animationDuration,
        ),
      ],
    );
  }

  String get _defaultText => 'Software Developer';

  TextStyle get _textStyle => GoogleFonts.roboto(
        fontSize: 42.0,
        fontWeight: FontWeight.bold,
        color: MColors.secondary,
      );

  Duration get _animationDuration => const Duration(milliseconds: 50);
}
