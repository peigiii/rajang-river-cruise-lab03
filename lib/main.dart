              import 'package:flutter/material.dart';
import 'viewmodels/cruise_view_model.dart';
import 'views/cruise_screen.dart';

void main() => runApp(const RajangCruiseApp());

class RajangCruiseApp extends StatefulWidget {
  const RajangCruiseApp({super.key});
  @override
  State<RajangCruiseApp> createState() => _RajangCruiseAppState();
}

class _RajangCruiseAppState extends State<RajangCruiseApp> {
  final model = CruiseViewModel();
  @override
  void dispose() {
    model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ListenableBuilder(
    listenable: model,
    builder: (context, child) => MaterialApp(
      title: 'Rajang River Cruise',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF087E83)),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF46B8B1),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      themeMode: model.darkMode ? ThemeMode.dark : ThemeMode.light,
      home: CruiseScreen(model: model),
    ),
  );
}
