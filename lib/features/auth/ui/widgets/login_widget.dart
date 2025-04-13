import 'package:flutter/material.dart';
import 'package:to_dos/common/_theme.dart';
import 'package:to_dos/common/buttons/custom_button.dart';
import 'package:to_dos/common/buttons/custom_button_login.dart';
import 'package:to_dos/common/assets.dart';
import 'package:to_dos/common/textfield/custom_text_field.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_outlined),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(24),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 47,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Username",
                      style: CustomTheme().textTheme,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      hintText: "Enter your Username",
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    Text(
                      "Password",
                      style: CustomTheme().textTheme,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextField(hintText: "*********", secure: true)
                  ],
                ),
              ),
              SizedBox(
                height: 69,
              ),
              CustomButton(),
              SizedBox(
                height: 31,
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 31,
              ),
              CustomLoginButton(
                text: "Login with Google",
                logo: Assets.googleLogo,
              ),
              SizedBox(
                height: 20,
              ),
              CustomLoginButton(
                text: "Login with Apple",
                logo: Assets.appleLogo,
              ),
              // SizedBox(
              //   height: 46,
              // ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "Don’t have an account? ",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                                text: "Register",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ])),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
