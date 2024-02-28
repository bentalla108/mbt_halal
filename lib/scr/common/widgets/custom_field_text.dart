import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.suffixIconName,
    this.prefixIconName,
    required this.labelText,
    this.obscureText = false,
    this.hintText,
    this.controller,
    this.validator,
  });

  final Widget? suffixIconName;
  final IconData? prefixIconName;
  final String labelText;
  final String? hintText;
  final bool obscureText;
  final TextEditingController? controller;

  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      expands: false,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIconName,
        prefixIcon: prefixIconName != null ? Icon(prefixIconName) : null,
        labelText: labelText,
      ),
    );
  }
}
