import 'package:flutter/material.dart';
import 'package:to_dos/common/assets.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({super.key});

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(Assets.appLogo),
    );
  }
}
