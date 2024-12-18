import 'package:flutter/material.dart';
import '../localization.dart';
import '../main.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)?.translate('app_title') ?? 'Employee Manager'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                MyApp.setLocale(context, const Locale('en'));
              },
              child: Text('Switch to English'),
            ),
            ElevatedButton(
              onPressed: () {
                MyApp.setLocale(context, const Locale('fa'));
              },
              child: Text('Switch to Farsi'),
            ),
          ],
        ),
      ),
    );
  }
}
