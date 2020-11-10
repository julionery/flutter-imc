import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../core/localization/app_translate.dart';
import 'home_controller.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends ModularState<HomeScreen, HomeController> {
  @override
  Widget build(BuildContext context) {
    final key = GlobalKey<ScaffoldState>();

    void _onItemTapped(int index) {
      if (index == 0) {
        controller.clear();
      } else if (controller.weight <= 0 || controller.height <= 0) {
        key.currentState.showSnackBar(
            const SnackBar(content: Text("Altura e peso são obrigatórios.")));
      } else {
        try {
          controller.calculateIMC();
        } catch (e) {
          key.currentState.showSnackBar(const SnackBar(
              content: Text("Altura ou peso informado em formato inválido.")));
        }
      }
    }

    return Scaffold(
      key: key,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                snap: true,
                floating: true,
                elevation: 0,
                backgroundColor: Colors.transparent,
                centerTitle: true,
                title: Text(
                  AppTranslate(context).text('app_name'),
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.wb_sunny_outlined),
                    color: Theme.of(context).primaryColor,
                    onPressed: controller.switchThemeData,
                  ),
                ],
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Observer(builder: (context) {
                    return Column(
                      children: [
                        TextField(
                          onChanged: controller.setWeight,
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          decoration: InputDecoration(
                              hintText: "Peso",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              suffix: const Text("Kg")),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        TextField(
                          onChanged: controller.setHeight,
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          decoration: InputDecoration(
                              hintText: "Altura",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              suffix: const Text("m")),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          controller.result,
                          style: const TextStyle(fontSize: 20),
                        ),
                        Text(
                          controller.situation,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.clear,
              ),
              label: "Limpar"),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.check,
              ),
              label: "Calcular")
        ],
      ),
    );
  }
}
