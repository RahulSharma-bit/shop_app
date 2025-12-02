import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  void _goToResetPasswordScreen(BuildContext context) {
    debugPrint('Submit from forget password.');
    Navigator.pushNamed(context, 'resetPassword');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //   Heading.
            Text(
              'Forget Password',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Text(
              "Don't worry sometimes peoples can forget too, enter your email and we will send you a password reset link",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(height: 40),

            //   TextField.
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'E-mail',
                prefixIcon: Icon(Icons.arrow_forward_ios_sharp),
              ),
            ),
            SizedBox(height: 20),

            //   Submit Button.
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _goToResetPasswordScreen(context),
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
