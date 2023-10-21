import 'package:flutter/material.dart';
import 'package:evirtus_app/widgets/ChampSaisie.dart';
import 'package:evirtus_app/widgets/BoutonValideWidget.dart';


class CreationCompte extends StatefulWidget {
  const CreationCompte({super.key});

  @override
  State<CreationCompte> createState() => _CreationCompteState();
}

class _CreationCompteState extends State<CreationCompte> {

  GlobalKey<FormState> _formkey=GlobalKey();
  TextEditingController _email=TextEditingController();
  TextEditingController _nom=TextEditingController();
  TextEditingController _centre=TextEditingController();
  TextEditingController _password=TextEditingController();
  TextEditingController _passwordconfirmed=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [_body()],),
    );
  }


  Widget _body(){
    return Column(
      children: [
        SizedBox(height: 140,),
        _text(),
        _champs(),
        BoutonWidget(
            text: "Créer compte",
            onPressed: (){

            }),
      ],
    );
  }

  Widget _text(){
    return Container(
      child: Text("Créer mon compte"),
    );
  }


  Widget _champs(){
    return Form(
      key: _formkey,
      child: Column(
        children: [
          ChampSaisie(
            ctrl: _email,
            label: "email",
            hintext: "votre email",
          ),

          ChampSaisie(
            ctrl: _nom,
            label: "nom",
            hintext: "votre nom",
          ),

          ChampSaisie(
            ctrl: _centre,
            label: "nom centre",
            hintext: "nom du centre",
          ),
          ChampSaisie(
            ctrl: _password,
            label: "mot de passe",
            hintext: "mot de passe",
          ),
          ChampSaisie(
            ctrl: _passwordconfirmed,
            label: "confirmer mot de passe",
            hintext: "confirmer mot de passe",
          )
        ],
      ),
    );
  }
}
