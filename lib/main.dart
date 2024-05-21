import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:michael_profile/home/home_page.dart';
import 'package:localization/localization.dart';
import 'package:flutter/material.dart';
import 'package:michael_profile/home/widgets/home_page_locale_widget/home_page_locale_widget_controller.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomePageLocaleWidgetController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final HomePageLocaleWidgetController _controller;
  Locale? _locale;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller = Provider.of<HomePageLocaleWidgetController>(
        context,
        listen: false,
      );
      _controller.addListener(_changeLanguage);
    });
  }

  @override
  dispose() {
    _controller.removeListener(_changeLanguage);
    _controller.dispose();
    super.dispose();
  }

  _changeLanguage() async {
    if (_controller.activeLocale != null) {
      await LocalJsonLocalization.delegate.load(_controller.activeLocale!);
      if (mounted) {
        _locale = _controller.activeLocale;
        _rebuildAllChildren(context);
      }
    }
  }

  void _rebuildAllChildren(BuildContext context) {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
  }

  @override
  Widget build(BuildContext context) {
    LocalJsonLocalization.delegate.directories = [
      'assets/lang/i18n',
    ];

    return MaterialApp(
      title: 'Michael Douglas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      locale: _locale,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        if (_locale == null) LocalJsonLocalization.delegate,
      ],
      supportedLocales: const [
        Locale('pt', 'BR'),
        Locale('en', 'US'),
        Locale('es', 'ES'),
        Locale('zh', 'CN'),
      ],
      home: const HomePage(),
    );
  }
}
