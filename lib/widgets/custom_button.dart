import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  const customButton({
    super.key,
    required this.text,
    this.onPressed,
  });
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF3AA6B9),
            minimumSize: const Size(150, 50)),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.w600,
              fontSize: 18),
        ));
  }
}
