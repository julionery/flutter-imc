import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_controller.dart';
import 'app_widget.dart';
import 'core/consts/routers_const.dart';
import 'interfaces/shared_repository_interface.dart';
import 'modules/home/home_module.dart';
import 'modules/intro/intro_module.dart';
import 'modules/splash/splash_screen.dart';
import 'repositories/shared_repository.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind<ISharedRepositoryInterface>(
          (i) => SharedRepository(),
        ),
        Bind(
          (i) => AppController(),
        )
      ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<ModularRouter> get routers => [
        ModularRouter(RoutersConst.splash,
            child: (_, args) => SplashScreen(),
            transition: TransitionType.noTransition),
        ModularRouter(
          RoutersConst.home,
          module: HomeModule(),
        ),
        ModularRouter(RoutersConst.intro,
            module: IntroModule(), transition: TransitionType.fadeIn)
      ];
}
