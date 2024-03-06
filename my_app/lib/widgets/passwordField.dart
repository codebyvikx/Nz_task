import 'package:flutter/material.dart';

class passwordField extends StatelessWidget {
  final dynamic controller;
  final String labeltext;
  final bool obscureText;
  final dynamic validator;
  final dynamic prefixIcon;
  final dynamic suffixIcon;
  final dynamic keyboardType;
  final dynamic onChanged;

  const passwordField(
      {super.key,
      required this.labeltext,
      required this.obscureText,
      this.onChanged,
      this.controller,
      this.validator,
      this.prefixIcon,
      this.keyboardType,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        obscureText: obscureText,
        validator: validator,
        onChanged: onChanged,

        // onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        textInputAction: TextInputAction.next,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
            floatingLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.grey),
            ),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              width: 2,
              color: Colors.black,
            )),
            labelText: labeltext,
            labelStyle: const TextStyle(color: Colors.white54)),
      ),
    );
  }
}
