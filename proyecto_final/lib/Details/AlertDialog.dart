import 'package:flutter/material.dart';
import 'package:proyecto_final/Details/prueba.dart';

class CustomAlertDialog extends StatefulWidget {
  const CustomAlertDialog({super.key});

  @override
  _CustomAlertDialogState createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      title: const Text("Lo que ofrece este sitio", style: TextStyle(fontWeight: FontWeight.bold)),
      content: Container(
        width: 550,
        height: 750,
        child: const SingleChildScrollView(
          physics:  BouncingScrollPhysics(),
          child: ListScreen(), // Aquí agregamos ListScreen como contenido del diálogo
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Yes"),
        ),
      ],
    );
  }
}













