import 'package:flutter/material.dart';

class CustomTiles extends StatelessWidget {
  final IconData? leading;
  final IconData? trailing;
  final String title;
  final Color? color;
  const CustomTiles(
      {super.key,
      this.leading,
      this.trailing = Icons.arrow_forward_ios,
      required this.title,
      this.color});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      titleTextStyle: TextStyle(color: color ?? Colors.white),
      contentPadding: EdgeInsets.all(0),
      leading: Icon(
        leading,
        color: color ?? Colors.white,
      ),
      trailing: Icon(
        trailing,
        color: color ?? Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle(color: color ?? Colors.white),
      ),
    );
  }
}
