import 'package:flutter/material.dart';
import 'package:evirtus_app/utils/ColorPage.dart';

class BoutonWidget extends StatefulWidget {
  final Function onPressed;
  final String text;

  BoutonWidget({
    required this.text,
    required this.onPressed,
  });

  @override
  State<BoutonWidget> createState() => _BoutonWidgetState();
}

class _BoutonWidgetState extends State<BoutonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: widget.onPressed as void Function()?,
        child: Text(
          widget.text,
          style: TextStyle(fontFamily: "Schyler", fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Utils.COLOR_PRINCIPAL,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ));
  }
}
