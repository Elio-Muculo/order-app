
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/app_module.dart';
import 'core/app_widget.dart';

void main() {
  Modular.to.addListener(() {
  });
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}