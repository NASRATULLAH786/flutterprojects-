import 'package:flutter/material.dart';
import '../localization.dart';

class AttendancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalization.of(context).translate('attendance_page_title')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalization.of(context).translate('mark_your_attendance'),
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(AppLocalization.of(context).translate('attendance_marked')),
                  ),
                );
              },
              child: Text(AppLocalization.of(context).translate('mark_attendance')),
            ),
          ],
        ),
      ),
    );
  }
}
