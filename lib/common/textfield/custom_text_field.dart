import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String? hintText;
  final bool secure;
  const CustomTextField(
      {super.key, required this.hintText, this.secure = false});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: widget.hintText,
      ),
      obscureText: widget.secure,
    );
  }
}
