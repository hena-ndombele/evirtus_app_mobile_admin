import 'package:evirtus_app/pages/AuthentificationPage.dart';
import 'package:evirtus_app/pages/CreationComptePage.dart';
import 'package:evirtus_app/pages/SplashScreen.dart';
import 'package:flutter/material.dart';


class MonApplication extends StatelessWidget {
  const MonApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthentificationPage(),
    );
  }
}
