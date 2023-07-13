import 'package:flutter/material.dart';

class ReferralTextField extends StatelessWidget {
  const ReferralTextField({super.key, required this.textEditingController});

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      controller: textEditingController,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 2,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(8))),
    );
  }
}
