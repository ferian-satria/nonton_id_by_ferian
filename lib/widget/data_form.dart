import 'package:flutter/material.dart';

class DataForm extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;

  const DataForm (
    {super.key, required this.hintText, required this.icon,
    this.obscureText = false});
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(width: 0, style: BorderStyle.none),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 8),
        filled: true,
        fillColor: const Color(0xFF2F2c44),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.white24, fontSize: 14, fontWeight: FontWeight.w400),
        prefixIcon: Icon(
          icon,
          size: 20,
        ),
        prefixIconColor: Colors.white24,
      ),
      obscureText: obscureText,
      );
  }
}