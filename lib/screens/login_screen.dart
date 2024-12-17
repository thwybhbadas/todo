import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/routes.dart';
import 'package:todo/widgets/custom_button.dart';
import 'package:todo/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              const Text(
                'My TODO',
                style: TextStyle(
                  fontSize: 54,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const CustomTextfield(
                hint: 'Email',
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextfield(
                hint: 'Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                  lable: "Login",
                  onPressed: () {
                    Get.toNamed(GetRoutes.home);
                  }),
              const SizedBox(
                height: 20,
              ),
              Text.rich(
                TextSpan(
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff949494),
                    ),
                    children: [
                      TextSpan(
                        text: 'Don\'t have an account?',
                      ),
                      TextSpan(
                        text: 'Sign up',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.toNamed(GetRoutes.signup);
                          },
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
