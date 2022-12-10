import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/src/pages/providers/heroes_info.dart';

import '../providers/villanos_info.dart';

class SuperFloatingAction extends StatelessWidget {
  const SuperFloatingAction({super.key});

  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);

    return Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      FloatingActionButton(
          child: Icon(Icons.access_alarm),
          backgroundColor: Colors.red,
          onPressed: () {
            heroesInfo.heroe = 'Ironman';
            villanosInfo.villano = 'El Mandarín';
          }),
      SizedBox(height: 10.0),
      FloatingActionButton(
          child: Icon(Icons.abc_sharp),
          backgroundColor: Colors.blue,
         onPressed: () {
            heroesInfo.heroe = 'Capitán América';
            villanosInfo.villano = 'Red Skull';
          }),
    ]);
  }
}
