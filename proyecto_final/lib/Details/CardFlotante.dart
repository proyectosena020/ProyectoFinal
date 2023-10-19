import 'package:flutter/material.dart';


class MyScrollableContent extends StatelessWidget {
  const MyScrollableContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Contenido desplazable
        ListView(
          children: List.generate(50, (index) {
            return ListTile(
              title: Text('Elemento $index'),
            );
          }),
        ),
        // Tarjeta flotante
        Positioned(
          top: 285, // Ajusta la posición vertical de la tarjeta
          left: 0, // Ajusta la posición horizontal de la tarjeta
          right: 0, // Ajusta la posición horizontal de la tarjeta
          child: Card(
            elevation: 4, // Sombra de la tarjeta
            margin: EdgeInsets.all(0), // Margen cero
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Tarjeta Flotante'),
            ),
          ),
        ),
      ],
    );
  }
}