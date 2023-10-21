import 'package:flutter/material.dart';
import 'package:evirtus_app/widgets/BoutonValideWidget.dart';
import 'package:evirtus_app/widgets/ChampSaisie.dart';


class AuthentificationPage extends StatefulWidget {
  const AuthentificationPage({super.key});

  @override
  State<AuthentificationPage> createState() => _AuthentificationPageState();
}

class _AuthentificationPageState extends State<AuthentificationPage> {

  GlobalKey<FormState> _formkey=GlobalKey();
  TextEditingController _email=TextEditingController();
  TextEditingController _password=TextEditingController();


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
        _bouton()
      ],
    );
  }

  Widget _text(){
    return Container(
      child: Text("Authentification"),
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
            hintext: "email",
          ),
          ChampSaisie(
              ctrl: _password,
          label: "password",
            hintext: "password",
          )
        ],
      ),
    );
  }Widget _bouton(){
    return Container(
      child: BoutonWidget(
        onPressed: (){},
        text: "Se connecter",
      ),
    );
  }
}
