import 'package:flutter/material.dart';
import 'package:played/routes/screens.dart';
import 'package:played/screens/categoria_screen.dart';
import 'package:played/screens/tienda_screen.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'home': (BuildContext context) => HomeScreen(),
    'promo': (BuildContext context) => const DetailsScreen(),
    'categoria': (BuildContext context) => CategoriaScreen(),
    'tienda': (BuildContext context) => TiendaScreen(),
  };
}
