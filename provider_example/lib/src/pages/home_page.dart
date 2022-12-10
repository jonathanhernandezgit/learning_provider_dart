import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/src/pages/providers/heroes_info.dart';
import 'package:provider_example/src/pages/widgets/super_floating_action.dart';
import 'package:provider_example/src/pages/widgets/super_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(heroesInfo.heroe ),
      ),
      body: Center(child: SuperText()),
      floatingActionButton: SuperFloatingAction(),
    );
  }
}
