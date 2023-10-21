import 'package:evirtus_app/apps/MonApplication.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'utils/ColorPage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(statusBarColor: Utils.COLOR_TRANSPARENT));
  runApp(MonApplication());
}

