import 'package:flutter/material.dart';

class CardUi extends StatelessWidget {
  final Icon icon;
  const CardUi({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.deepPurple[200]!, // Color de la sombra
              spreadRadius: 2, // Radio de propagación de la sombra
              blurRadius: 2, // Radio de difuminación de la sombra
              offset: const Offset(0, 2), // Desplazamiento de la sombra (horizontal, vertical)
            ),
          ],
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(16),
        child: Icon(icon.icon));
  }
}
