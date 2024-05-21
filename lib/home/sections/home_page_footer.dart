import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageFooter extends StatelessWidget {
  const HomePageFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Text(
          'Desenvolvido com ♥, utilizando Flutter',
          style: GoogleFonts.roboto(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
