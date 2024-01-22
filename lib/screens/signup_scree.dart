import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:instagram_clones/utils/color_utils.dart';
import 'package:instagram_clones/widgets/custom_buttons.dart';
import 'package:instagram_clones/widgets/text_field_input.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  void dipose() {
    emailController.dispose();
    passwordController.dispose();
    bioController.dispose();
    usernameController.dispose();
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
                    TextFieldInput(
                        textEditingController: usernameController,
                        textInputType: TextInputType.text,
                        hintText: 'Enter your username',
                        isPass: false),
                    const MaxGap(16),
                    TextFieldInput(
                        textEditingController: bioController,
                        textInputType: TextInputType.text,
                        hintText: 'Enter your bio',
                        isPass: false), 
                    const MaxGap(16),       
                    const CustomButton(
                      title: 'Sign Up',
                      buttonColor: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Text("Already have an account?"),       
              SizedBox(width: 8),
              Text(
                  'Log In',
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