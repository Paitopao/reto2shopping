import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2shopping/controlador/controladorprincipal.dart';
import 'package:reto2shopping/interfaz/home.dart';

void main() {
  Get.put(controladorprincipal());
  runApp(const MyApp());
}
