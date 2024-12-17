import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key, 
    required this.hint,
    this.obscureText=false,
    this.controller,  
    this.keybordType=TextInputType.text});
   
   final String hint;
   final bool obscureText;
   final TextEditingController? controller;
   final TextInputType keybordType;
  @override
  Widget build(BuildContext context) {
    return Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 12,
                    ),
                  ],
                ),
                child: TextFormField(
                  controller: controller,
                  obscureText: obscureText,
                  keyboardType: keybordType,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hint,
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Color(0xff949494),
                    ),
                  ),
                ),);
  }
}