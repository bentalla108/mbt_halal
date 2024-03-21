import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    this.textInputType,
    super.key,
    this.suffixIconName,
    this.prefixIconName,
    required this.labelText,
    this.obscureText = false,
    this.hintText,
    this.controller,
    this.validator,
  });

  final TextInputType? textInputType;
  final Widget? suffixIconName;
  final dynamic prefixIconName;
  final String labelText;
  final String? hintText;
  final bool obscureText;
  final TextEditingController? controller;

  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    Widget? prefixIconWidget;

    if (prefixIconName != null) {
      if (prefixIconName is IconData) {
        // If prefixIconName is an IconData, create an Icon widget
        prefixIconWidget = Icon(prefixIconName);
      } else if (prefixIconName is Widget) {
        // If prefixIconName is already a widget, assign it directly
        prefixIconWidget = prefixIconName;
      } else {
        // Handle other cases if necessary
        // For example, throw an error or assign a default widget
        prefixIconWidget = const Icon(Icons.error); // Assigning a default icon
      }
    }
    return TextFormField(
      controller: controller,
      validator: validator,
      expands: false,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIconName,
        prefixIcon: prefixIconWidget,
        labelText: labelText,
      ),
    );
  }
}
