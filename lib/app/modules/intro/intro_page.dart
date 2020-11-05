import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:imc_app/app/core/consts/colors_const.dart';
import 'package:imc_app/app/core/localization/app_translate.dart';
import 'intro_controller.dart';
import 'widgets/slide_dots_widget.dart';
import 'widgets/slide_widget.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends ModularState<IntroPage, IntroController> {
  @override
  void initState() {
    super.initState();
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        AppTranslate(context).text('intro.wellcome'),
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: SlideWidget(
                          onPageChanged: (index) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                      ),
                      SlideDotsWidget(
                        currentPage: currentIndex,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: _height * 0.06,
                ),
                Container(
                  width: 250,
                  child: RaisedButton(
                    onPressed: controller.doEnter,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                                AppTranslate(context).text('intro.start'),
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).primaryColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
