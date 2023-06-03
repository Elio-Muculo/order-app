import 'package:flutter_modular/flutter_modular.dart';
import 'package:orderapp/features/auth/data/data_source/auth_api.dart';


import '../../../core/util/routes.dart';
import '../data/repositories/auth_repository_impl.dart';
import '../domain/usecases/login_usecase.dart';
import '../domain/usecases/logout_usecase.dart';
import '../domain/usecases/signup_usecase.dart';
import '../presentation/screens/login_screen.dart';


class AuthModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  final List<Bind> binds = [
    Bind.singleton((i) => AuthAPI(),export: true),
    Bind.singleton((i) => AuthRepository(i()), export: true),
    Bind.singleton((i) => LoginUseCase(i()),export: true),
    Bind.singleton((i) => SignUpUseCase(i()),export: true),
    Bind.singleton((i) => LogOutUseCase(i()),export: true)
  ];

  @override
  final List<ModularRoute> routes = [
      ChildRoute(auth, child: (_,__)=>LoginScreen()),
  ];
}
