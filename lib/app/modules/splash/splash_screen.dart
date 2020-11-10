import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imc_app/app/core/consts/colors_const.dart';

import '../../core/consts/routers_const.dart';
import '../../interfaces/shared_repository_interface.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkUserSkipIntro();
  }

  Future<void> checkUserSkipIntro() async {
    await Future.delayed(const Duration(seconds: 1));
    final app = Modular.get<ISharedRepositoryInterface>();
    final skipIntro = await app.readUserSkipIntro();

    if (skipIntro) {
      Modular.to.pushReplacementNamed(RoutersConst.home);
    } else {
      Modular.to.pushReplacementNamed(RoutersConst.intro);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              ColorsConst().mainColor(1),
              const Color(0xFF245A89)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Meu",
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                const Text(
                  "IMC",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
