import 'package:flutter/material.dart';


class BoutonAnnuler extends StatefulWidget {
  const BoutonAnnuler({super.key});

  @override
  State<BoutonAnnuler> createState() => _BoutonAnnulerState();
}

class _BoutonAnnulerState extends State<BoutonAnnuler> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text("Creer")),
    );
  }
}
