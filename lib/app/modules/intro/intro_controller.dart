import 'package:flutter_modular/flutter_modular.dart';

import '../../core/consts/routers_const.dart';
import '../../interfaces/shared_repository_interface.dart';

class IntroController {
  Future<void> doEnter() async {
    final app = Modular.get<ISharedRepositoryInterface>();
    await app.saveUserSkipIntro();
    Modular.to.pushReplacementNamed(RoutersConst.home);
  }
}
