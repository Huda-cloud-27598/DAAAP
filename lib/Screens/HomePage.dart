import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';



class HomePage extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 100),
      body:
      Column(
        children: [
        SizedBox(
          height: 500,
        ),
        Divider(
          height: 5,
          thickness: 5,
          color: Color.fromRGBO(131, 238, 255,
              100), //neon blue, find a way to make a neon blue method
        ),
        GroupButton(
          isRadio: false,
          spacing: 10,
          onSelected: (index, isSelected) => print('$index button is selected'),
          buttons: ["Comedy", "Horror", "Fantasy", "Documentary", "text", "Action"],
        )
        ],
      ),
    );
  }
}