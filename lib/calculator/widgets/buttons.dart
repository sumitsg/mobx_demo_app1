// ignore_for_file: use_key_in_widget_constructors, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final onTap;
  Color? bgcolor;
  Color textColor = Colors.white;
  late final String? lable;

  Button.red({this.lable, this.onTap}) {
    bgcolor = Colors.red;
  }

  Button.orange({this.lable, this.onTap}) {
    bgcolor = Colors.orange;
  }
  Button.blue({this.lable, this.onTap}) {
    bgcolor = Colors.blue;
  }
  Button.grey({this.lable, this.onTap}) {
    bgcolor = Colors.black45;
    textColor = Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            color: bgcolor,
            child: Center(
                child: Text(
              lable!,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: textColor,
              ),
            )),
          ),
        ),
      ),
    );
  }
}
