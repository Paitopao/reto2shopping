import 'package:get/get.dart';
import 'package:reto2shopping/clases/productos.dart';

class controladorprincipal extends GetxController {
  final posicionPagina = 0.obs;
  final pro = <productos>[].obs;

  void onInit() {
    pro.add(productos(
        1,
        "Vino Trivento",
        "https://www.espaciovino.com.ar/media/default/0001/62/thumb_61791_default_medium.jpeg",
        0,
        50000));
    pro.add(productos(
        2,
        "Ginebra Star Of Bombay",
        "https://dislicores.vteximg.com.br/arquivos/ids/155929-1000-1000/Licores-ginebra_937097_1.jpg?v=637085599559800000",
        0,
        190000));
    pro.add(productos(
        3,
        "Whisky Jack Gentleman",
        "https://http2.mlstatic.com/D_NQ_NP_2X_921961-MCO48125211584_112021-F.webp",
        0,
        168000));
    pro.add(productos(
        4,
        "Dragon Mist Vodka",
        "https://th.bing.com/th/id/R.a472c08adc42f94ebe5e67ccae5547c6?rik=aomTIyfWfPGhow&pid=ImgRaw&r=0",
        0,
        150000));
    pro.add(productos(
        5,
        "Tequila Milagro Reposado ",
        "https://marketestancola19.com/wp-content/uploads/2020/07/Milagro-barril-selecto.png",
        0,
        280000));

    super.onInit();
  }

  void cambioposicion(int x) {
    posicionPagina.value = x;
  }

  int get posicionPag => posicionPagina.value;

  void cambiocantidades(int posicion, int valor) {
    pro[posicion].cantidad = valor;
  }

  int calculartotal() {
    int total = 0;
    for (int i = 0; i < pro.length; i++) {
      total = total + pro[i].cantidad * pro[i].precio;
    }

    return total;
  }

  void limpiartodo() {
    for (int i = 0; i < pro.length; i++) {
      pro[i].cantidad = 0;
    }
    calculartotal();
  }
}
