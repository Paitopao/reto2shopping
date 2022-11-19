import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2shopping/controlador/controladorprincipal.dart';
import 'package:reto2shopping/interfaz/menu.dart';
import 'package:reto2shopping/interfaz/pag1_inicio.dart';
import 'package:reto2shopping/interfaz/pag2_productos.dart';
import 'package:reto2shopping/interfaz/pag3_comprar.dart';
import 'package:reto2shopping/interfaz/pag4_acercademi.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ciclo 4 Reto 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Paito Shopping'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List paginas = [
  pag1_inicio(),
  pag2_productos(),
  pag3_comprar(),
  pag4_acercademi(),
];

class _MyHomePageState extends State<MyHomePage> {
  controladorprincipal control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: menu(),
        body: Obx(() => paginas[control.posicionPag]));
  }
}
