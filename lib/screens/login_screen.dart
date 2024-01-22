import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:instagram_clones/utils/color_utils.dart';
import 'package:instagram_clones/widgets/custom_buttons.dart';
import 'package:instagram_clones/widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void dipose() {
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/instagram.svg',
                        color: white, height: 64),
                    const MaxGap(48),
                    TextFieldInput(
                        textEditingController: emailController,
                        textInputType: TextInputType.emailAddress,
                        hintText: 'Enter your email address',
                        isPass: false),
                    const MaxGap(16),
                    TextFieldInput(
                        textEditingController: passwordController,
                        textInputType: TextInputType.visiblePassword,
                        hintText: 'Enter your password',
                        isPass: true),
                    const MaxGap(16),
                    const CustomButton(
                      title: 'Log In',
                      buttonColor: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                SizedBox(width: 8),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
