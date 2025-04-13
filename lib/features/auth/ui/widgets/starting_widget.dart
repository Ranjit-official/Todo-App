import 'package:flutter/material.dart';
import 'package:to_dos/common/buttons/custom_button.dart';
import 'package:to_dos/common/buttons/custom_button_login.dart';

class StartingWidget extends StatefulWidget {
  const StartingWidget({super.key});

  @override
  State<StartingWidget> createState() => _StartingWidgetState();
}

class _StartingWidgetState extends State<StartingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: SafeArea(
          minimum: EdgeInsets.all(24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              "Welcome to UpTodo",
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              "Please login to your account or create new account to continue",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            Spacer(),
            CustomButton(),
            SizedBox(
              height: 28,
            ),
            CustomLoginButton(
              text: "CREATE ACCOUNT",
            ),
            SizedBox(
              height: 50,
            )
          ])),
    );
  }
}
