import 'package:flutter/material.dart';

class CustomInputWidget extends StatelessWidget {
  final TextEditingController textEditing;
  final String textLabel;
  final bool isPassword;
  const CustomInputWidget({
    super.key,
    required this.textEditing,
    required this.textLabel,
    required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditing,
      obscureText: isPassword,
      decoration: InputDecoration(
        floatingLabelStyle: Theme.of(context).textTheme.titleLarge,
        labelText: textLabel,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Colors.grey, width: 1.0),
        ),
        // Border state when the user is actively typing in the field
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Colors.blue, width: 2.0),
        ),
        // Border state when the field validator fails
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Colors.red, width: 1.0),
        ),
      ),
    );
  }
}
