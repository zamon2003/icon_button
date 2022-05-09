import 'package:flutter/material.dart';

class Icon_Button extends StatefulWidget {
  const Icon_Button({Key? key}) : super(key: key);

  @override
  State<Icon_Button> createState() => _Icon_ButtonState();
}

class _Icon_ButtonState extends State<Icon_Button> {
  bool forStyle = true;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          forStyle = !forStyle;
        });
      },
      icon: forStyle
          ? Icon(
              Icons.star_border,
              size: 35,
              color: Colors.amber,
            )
          : Icon(
              Icons.star,
              color: Colors.amber,
              size: 35,
            ),
    );
  }
}
