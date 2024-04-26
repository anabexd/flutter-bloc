import 'package:aprendendo_bloc/presenter/modules/home/bloc/home_bloc.dart';
import 'package:aprendendo_bloc/presenter/modules/home/home_controller.dart';
import 'package:aprendendo_bloc/presenter/modules/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    super.binds(i);
    i.addLazySingleton(HomeBloc.new);
    i.addLazySingleton(HomeController.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => HomePage(),
    );
    super.routes(r);
  }
}
