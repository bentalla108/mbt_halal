import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';

import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(BSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo - Title - Subtitle
            BLoginHeader(),

            //Form
            BLoginForm(),

            /// Divider
          ],
        ),
      ),
    );
  }
}
