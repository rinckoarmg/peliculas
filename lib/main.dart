import 'package:flutter/material.dart';
import 'package:played/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Peliculas',
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: getApplicationRoutes(),
        theme: ThemeData.light()
            .copyWith(appBarTheme: AppBarTheme(color: Colors.indigo)));
  }
}
