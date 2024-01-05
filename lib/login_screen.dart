import 'package:flutter/material.dart';
import 'package:login/widgets/gradient_button.dart';
import 'package:login/widgets/login_field.dart';
import 'package:login/widgets/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              const Text(
                'Signin',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
              const SizedBox(
                height: 50,
              ),
              const SocialButtons(
                iconPath: 'assets/svg/g_logo.svg',
                label: 'Continue with Google',
              ),
              const SizedBox(height: 20),
              const SocialButtons(
                iconPath: 'assets/svg/f_logo.svg',
                label: 'Continue with Facebook',
                horizontalPadding: 90,
              ),
              const SizedBox(height: 15),
              const Text(
                'or',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 15),
              const LoginField(hintText: 'Email'),
              const SizedBox(
                height: 15,
              ),
              const LoginField(hintText: 'Passowrd'),
              const SizedBox(
                height: 20,
              ),
              const GradientButton(),
            ],
          ),
        ),
      ),
    );
  }
}
