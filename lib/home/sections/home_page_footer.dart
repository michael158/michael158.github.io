import 'package:google_fonts/google_fonts.dart';
import 'package:localization/localization.dart';
import 'package:flutter/material.dart';

class HomePageFooter extends StatelessWidget {
  const HomePageFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Text(
          'home-page-footer-message'.i18n(),
          style: GoogleFonts.roboto(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
