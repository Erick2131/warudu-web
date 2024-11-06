import 'package:flutter/material.dart';
import 'agregarplatillo.dart';
import 'navbar.dart';
import 'agregaringrediente.dart';
import 'agregarusuario.dart';
import 'agregarplatillo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:AddPlatillo()//AddIngrediente()//AddUsuario()AddIngrediente()//LoginScreen(),AddIngrediente()
    );
  }
}



