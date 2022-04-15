import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  const InputTextField(this.controller, this.hint, {Key? key}) : super(key: key);

  final TextEditingController controller;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8.0),
        child:TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          style: TextStyle(
              color: Colors.green[700],
              fontWeight: FontWeight.w300,
              fontSize: 20.0
          ),
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.border_all),
            filled: true,
            fillColor: Colors.grey[300],
            hintText: hint,
          ),
        )
    );
  }
}