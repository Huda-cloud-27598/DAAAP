import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:DAAPP/pallete.dart';
import 'package:flutter/widgets.dart';

class RoundedButton extends StatelessWidget {



  const RoundedButton({
    Key? key,
    required this.onTap,
    required this.sColor,
    required this.buttonName}) : super(key: key);

  final String buttonName;
  final void Function() onTap;
  final Color sColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.12,
      decoration: BoxDecoration(
        color: sColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        alignment: Alignment.center,
        children:[
          Text(buttonName),
          GestureDetector(
            onTap: onTap,
          ),
        ],
      )
    );
  }
}