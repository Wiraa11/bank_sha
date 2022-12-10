import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class ProfileEditSuccessPage extends StatelessWidget {
  const ProfileEditSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nice Update',
              style: blackTexStyle.copyWith(
                fontWeight: semibold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 26),
            Text(
              'Your data is safe with\nour system',
              style: greyTexStyle.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 60),
            CustomFilledButton(
              width: 183,
              title: 'My Profile',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
