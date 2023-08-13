import 'package:flutter/material.dart';

class YourButton extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const YourButton({super.key, required this.NameBTN, required this.onPressed});
  // ignore: non_constant_identifier_names
  final String NameBTN;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
      ),
      child: Text(NameBTN),
    );
  }
}
