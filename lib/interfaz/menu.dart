import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2shopping/controlador/controladorprincipal.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  controladorprincipal Control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                child: UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://th.bing.com/th/id/R.d4f4db91350650ba145b568aefe3ea06?rik=Y0TQ071oOlwZpQ&pid=ImgRaw&r=0"),
                    ),
                    accountName: Text("Sandra Paola Perez"),
                    accountEmail: Text("sbalen@uninorte.edu.co"))),
            Divider(),
            Expanded(
                child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Inicio"),
                  trailing: Icon(Icons.arrow_right_sharp),
                  onTap: () {
                    Navigator.pop(context);
                    Control.cambioposicion(0);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.headphones_battery_sharp),
                  title: Text("Productos"),
                  trailing: Icon(Icons.arrow_right_sharp),
                  onTap: () {
                    Navigator.pop(context);
                    Control.cambioposicion(1);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.money_outlined),
                  title: Text("Comprar"),
                  trailing: Icon(Icons.arrow_right_sharp),
                  onTap: () {
                    Navigator.pop(context);
                    Control.cambioposicion(2);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Acerca De..."),
                  trailing: Icon(Icons.arrow_right_sharp),
                  onTap: () {
                    Navigator.pop(context);
                    Control.cambioposicion(3);
                  },
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
