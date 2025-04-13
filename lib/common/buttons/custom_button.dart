import 'package:flutter/material.dart';
import 'package:to_dos/common/_theme.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: CustomTheme.buttonColor,
            borderRadius: BorderRadius.circular(4)),
        padding: EdgeInsets.all(12),
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
