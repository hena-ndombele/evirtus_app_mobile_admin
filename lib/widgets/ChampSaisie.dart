import 'package:flutter/material.dart';


class ChampSaisie extends StatefulWidget {
  String label="";
  String hintext="";
  TextEditingController ctrl;
  TextInputType type=TextInputType.text;




  ChampSaisie({
   this.label="",
    this.hintext="",
    required this.ctrl,
    this.type=TextInputType.text,

});

  @override
  State<ChampSaisie> createState() => _ChampSaisieState();
}

class _ChampSaisieState extends State<ChampSaisie> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType:widget.type,
      validator: (String? value){
        if(value == null || value.isEmpty){
          return "Champs obligatoire*";
        }
        return null;

      },
      decoration: InputDecoration(

          label: Text(widget.label),
        hintText: widget.hintext
      ),
    );
  }
}
