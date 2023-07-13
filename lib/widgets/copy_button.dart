import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyButton extends StatelessWidget {
  const CopyButton({super.key, required this.textEditingController});

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(


      // this removes the default margins present in ElevatedButton
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,  //this helps remove the shadow effect coming from the elevatedButton
        elevation: 0,
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
      ),
      //copies the text to the Clipboard
      onPressed: () {
        final data = ClipboardData(text: textEditingController.text);
        Clipboard.setData(data);
        const snackBar = SnackBar(content: Text('Copied to Clipboard'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Icon(
            Icons.copy,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
