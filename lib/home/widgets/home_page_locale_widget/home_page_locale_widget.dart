import 'package:michael_profile/home/widgets/home_page_locale_widget/home_page_locale_widget_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flag/flag.dart';

class HomePageLocaleWidget extends StatefulWidget {
  const HomePageLocaleWidget({super.key});

  @override
  State<HomePageLocaleWidget> createState() => _HomePageLocaleWidgetState();
}

class _HomePageLocaleWidgetState extends State<HomePageLocaleWidget> {
  late HomePageLocaleWidgetController _controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller = Provider.of<HomePageLocaleWidgetController>(context);
    _controller.init(Localizations.localeOf(context));
  }

  @override
  Widget build(BuildContext context) {
    double flagSize = 30.0;
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SizedBox(
        width: double.infinity,
        child: Wrap(
          alignment: WrapAlignment.end,
          spacing: 15.0,
          children: [
            InkWell(
              child: Flag.fromCode(
                FlagsCode.BR,
                width: flagSize,
                height: flagSize,
              ),
              onTap: () => _controller.setLocale(const Locale('pt', 'BR')),
            ),
            InkWell(
              child: Flag.fromCode(
                FlagsCode.US,
                width: flagSize,
                height: flagSize,
              ),
              onTap: () => _controller.setLocale(const Locale('en', 'US')),
            ),
            InkWell(
              child: Flag.fromCode(
                FlagsCode.ES,
                width: flagSize,
                height: flagSize,
              ),
              onTap: () => _controller.setLocale(const Locale('es', 'ES')),
            ),
            InkWell(
              child: Flag.fromCode(
                FlagsCode.CN,
                width: flagSize,
                height: flagSize,
              ),
              onTap: () => _controller.setLocale(const Locale('zh', 'CN')),
            ),
          ],
        ),
      ),
    );
  }
}
