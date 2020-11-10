import 'package:flutter/material.dart';
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
    final TextEditingController _weightController = TextEditingController();
    final TextEditingController _heightController = TextEditingController();

    return Scaffold(
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
                  child: Column(
                    children: [
                      TextField(
                        controller: _weightController,
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
                        controller: _heightController,
                        decoration: InputDecoration(
                            hintText: "Altura",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            suffix: const Text("m")),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
