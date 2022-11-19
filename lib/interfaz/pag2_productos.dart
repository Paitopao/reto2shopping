import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2shopping/controlador/controladorprincipal.dart';

class pag2_productos extends StatefulWidget {
  const pag2_productos({super.key});

  @override
  State<pag2_productos> createState() => _pag2_productosState();
}

class _pag2_productosState extends State<pag2_productos> {
  controladorprincipal control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(() => ListView.builder(
            itemCount: control.pro.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image(image: NetworkImage(control.pro[index].imagen)),
                title: Text(control.pro[index].nombre +
                    "|" +
                    control.pro[index].precio.toString()),
                trailing: Text(control.pro[index].cantidad.toString(),
                    style: TextStyle(fontSize: 30)),
                subtitle: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          int nuevacantidad = control.pro[index].cantidad + 1;
                          control.cambiocantidades(index, nuevacantidad);
                          control.pro.refresh();
                        },
                        icon: Icon(Icons.arrow_circle_up)),
                    VerticalDivider(),
                    IconButton(
                        onPressed: () {
                          int nuevacantidad = control.pro[index].cantidad - 1;
                          if (nuevacantidad < 0) {
                            nuevacantidad = 0;
                          }

                          control.cambiocantidades(index, nuevacantidad);
                          control.pro.refresh();
                        },
                        icon: Icon(Icons.arrow_circle_down)),
                  ],
                ),
              );
            },
          )),
    );
  }
}
