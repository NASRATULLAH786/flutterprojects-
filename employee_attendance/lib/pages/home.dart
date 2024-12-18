import 'package:flutter/material.dart';
import '../localization.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalization.of(context).translate('home_page_title')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/attendance');
              },
              child: Text(AppLocalization.of(context).translate('mark_attendance')),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/leave');
              },
              child: Text(AppLocalization.of(context).translate('manage_leave')),
            ),
          ],
        ),
      ),
    );
  }
}
