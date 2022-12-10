import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_example/src/pages/providers/heroes_info.dart';
import 'package:provider_example/src/pages/providers/villanos_info.dart';

import 'package:provider_example/src/pages/home_page.dart';

void main() => runApp(MyApp());
  
/*   MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HeroesInfo()),
        ChangeNotifierProvider(create: (_) => VillanosInfo())
      ],
      child: MyApp(),
  ) */

class MyApp extends StatelessWidget {
  const MyApp({super.key});

/*   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home' : (context) => HomePage()
      },
    );
  } */

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => HeroesInfo()),
        ChangeNotifierProvider(create: (BuildContext context) => VillanosInfo()),
      ],
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        routes: {'home': (context) => HomePage()},
      ),
    );
  }
}
