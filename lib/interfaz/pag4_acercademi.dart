import 'package:flutter/material.dart';

class pag4_acercademi extends StatefulWidget {
  const pag4_acercademi({super.key});

  @override
  State<pag4_acercademi> createState() => _pag4_acercademiState();
}

class _pag4_acercademiState extends State<pag4_acercademi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Sandra Paola"),
            subtitle: Text("Nombres"),
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt),
            title: Text("Perez Balen"),
            subtitle: Text("Apellidos"),
          ),
          ListTile(
            leading: Icon(Icons.phone_android_rounded),
            title: Text("3193690193"),
            subtitle: Text("Celular"),
          ),
          ListTile(
            leading: Icon(Icons.email_outlined),
            title: Text("sbalen@uninorte.edu.co"),
            subtitle: Text("Correo"),
          ),
        ],
      ),
    );
  }
}
