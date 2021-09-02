import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton(
      {required this.image,
      required this.text,
      required this.color,
      required this.onpressed});

  final Widget image;
  final Widget text;
  final Color color;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            image,
            text,
            Opacity(
              opacity: 0,
              child: Image.asset('assets/glogo.png'),
            )
          ],
        ),
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(
            primary: color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minimumSize: Size(160, 60)));
  }
}
