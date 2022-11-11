import 'package:flutter/material.dart';

class CTextField extends StatelessWidget {
  final TextInputType textInputTypeee;
  final bool isPassword;
  final String hinttexttt;

  const CTextField({
  Key? key,
    required this.textInputTypeee,
    required this.isPassword,
    required this.hinttexttt,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: textInputTypeee,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hinttexttt,
          // To delete borders
          enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(
              context,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          filled: true,
          contentPadding: const EdgeInsets.all(8),
        ));
  }
}
