import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:michael_profile/colors/colors.dart';

class MacOsTerminalWindowBody extends StatelessWidget {
  const MacOsTerminalWindowBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SyntaxView(
      code: "const coder = $_code", // Code text
      syntax: Syntax.DART,
      syntaxTheme: _theme,
      fontSize: 18.0,
      withZoom: false,
      withLinesCount: true,
      selectable: false,
    );
  }

  String get _code => """{
      name: "Michael Douglas",
      skills: [
        "Flutter", "React", "Vue.js", "PHP", "Dart", "Express"
        "Javascript", "Git", "AWS", "Node JS", "Laravel",
        "Mongo DB", "MySql", "PostgreSQL", "Oracle", "SQL Server",
        "Arduino", "Alexa", "Google Home", "IOT", "Android", "Ios",
        "Docker", "Solid", "Mobx", "Providers"
      ],
      hardWorker: true,
      quickLearner: true,
      problemSolver: true,
      experience: true,
      flexible: true
  }""";

  SyntaxTheme get _theme => SyntaxTheme(
        linesCountColor: const Color(0xFFFFFFFF).withOpacity(.7),
        backgroundColor: Colors.transparent,
        baseStyle: const TextStyle(color: Color(0xFFFFFFFF)),
        numberStyle: const TextStyle(color: Color(0xFF6BC1FF)),
        commentStyle: const TextStyle(color: Color(0xFF9E9E9E)),
        keywordStyle: TextStyle(color: MColors.primary),
        stringStyle: const TextStyle(color: Color(0xFF93ffab)),
        punctuationStyle: const TextStyle(color: Color(0xFFFFFFFF)),
        classStyle: TextStyle(color: MColors.secondary),
        constantStyle: const TextStyle(color: Color(0xFF795548)),
        zoomIconColor: const Color(0xFFFFFFFF),
      );
}
