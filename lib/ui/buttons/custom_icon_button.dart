import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.icon,
    this.color = Colors.indigo,
    this.isFilled = false,
  }) : super(key: key);

  final Function onPressed;
  final String text;
  final Color color;
  final bool isFilled;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => onPressed(),
      style: ButtonStyle(
          shape: MaterialStateProperty.all(StadiumBorder()),
          backgroundColor: MaterialStateProperty.all(color.withOpacity(0.5)),
          overlayColor: MaterialStateProperty.all(color.withOpacity(0.3))),
      child: Row(children: [
        Icon(icon, color: Colors.white),
        Text(
          text,
          style: TextStyle(color: Colors.white),
        )
      ]),
    );
  }
}
