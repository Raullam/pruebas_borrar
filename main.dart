import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'preferencies/preferencies.dart';
import 'providers/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Inicialitzem els Widgets
  await Preferencies.init(); // Inicialitzem SharedPreferences
  runApp(MultiProvider(
    providers: [
      // Inicialitzem els providers
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(modeNit: Preferencies.modeNit),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final temaProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Examen prueba',
      theme: temaProvider.temaActual,
      home: PaginaLogin(),
    );
  }
}
