import 'package:flutter_modular/flutter_modular.dart';

import '../features/auth/di/auth_module.dart';
import 'util/routes.dart';


class AppModule extends Module {
  @override
  List<Module> get imports => [
    AuthModule()
  ];

  @override
  List<Bind> get binds => [

  ];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute(auth, module: AuthModule())
  ];
}