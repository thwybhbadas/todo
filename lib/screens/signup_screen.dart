import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/widgets/custom_textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                hint: 'Name',
              ),
              const SizedBox(
                height: 10,
              ),
               const CustomTextfield(
                hint: 'Address',
              ),
              const SizedBox(
                height: 10,
              ),
               const CustomTextfield(
                hint: 'Contact',
              ),
              const SizedBox(
                height: 10,
              ),
               const CustomTextfield(
                hint: 'Email',
              ),
              const SizedBox(
                height: 10,
              ),
               const CustomTextfield(
                hint: 'Password',
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextfield(
                hint: 'Confirm Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(14.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x29000000),
                        offset: Offset(0, 3),
                        blurRadius: 12,
                      )
                    ]),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
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
                        text: 'Already have an account?',
                      ),
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {
                          Get.back();
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
