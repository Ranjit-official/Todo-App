import 'package:flutter/material.dart';
import 'package:to_dos/common/Assets.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.sort),
        title: Text("Index"),
        actionsPadding: EdgeInsets.only(right: 20),
        actions: [
          ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                Assets.profile,
                width: 42,
                height: 42,
              )),
        ],
      ),
      body: SafeArea(
          minimum: EdgeInsets.all(24),
          child: Container(
            child: Text("Hello World"),
          )),
    );
  }
}
