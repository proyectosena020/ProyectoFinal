// ignore_for_file: file_names, use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:proyecto_final/Env.dart';
import 'package:proyecto_final/HomePage/home_screens.dart';
import 'package:proyecto_final/generated/translations.g.dart';
import 'package:proyecto_final/models/PagoAnfitrionModel.dart';
import 'package:proyecto_final/models/ReservaModel.dart';
import 'package:proyecto_final/theme/theme_constants.dart';
import 'package:proyecto_final/theme/theme_manager.dart';
import 'package:http/http.dart' as http;

class CancelacionReserva extends StatefulWidget {
  // propiedad que recibe la reserva
  final ReservaModel reserva;

  final ThemeManager themeManager;

  const CancelacionReserva(
      {super.key, required this.reserva, required this.themeManager});

  @override
  State<CancelacionReserva> createState() => _CancelacionReservaState();
}

class _CancelacionReservaState extends State<CancelacionReserva> {
  // Función para cancelar una reserva con devolución oportuna
  cancelarReservaOportuna(ReservaModel reserva, ThemeManager themeManager,
      PagoAnfitrionModel pagoA) async {
    String url = "";

    String url2 = "";

    String url3 = "";

    url = "$djangoApi/api/Devolucion/";

    url2 = "$djangoApi/api/Reservas/";

    url3 = "$djangoApi/api/PagoAnfitrion/";

    // Encabezados y cuerpo de la solicitud HTTP para la devolución
    final Map<String, String> dataHeader = {
      'Content-Type': 'application/json; charset-UTF=8',
    };

    final Map<String, dynamic> dataBody = {
      "fechaRadicado":
          "${DateTime.now().year}-${DateTime.now().month.toString().padLeft(2, '0')}-${DateTime.now().day.toString().padLeft(2, '0')}",
      "fechaPago": null,
      "valor": reserva.precioFinal,
      "estado": "Pendiente",
      "reserva": reserva.id,
    };

    // Encabezados y cuerpo de la solicitud HTTP para la actualización de la reserva
    final Map<String, String> dataHeader2 = {
      'Content-Type': 'application/json; charset-UTF=8',
    };

    final Map<String, dynamic> dataBody2 = {
      "usuario": reserva.usuario,
      "fecha": reserva.fecha,
      "fechaEntrada": reserva.fechaEntrada,
      "fechaSalida": reserva.fechaSalida,
      "numHuespedes": reserva.numHuespedes,
      "numAdultos": reserva.numAdultos,
      "numNinos": reserva.numNinos,
      "numBebes": reserva.numBebes,
      "numMascotas": reserva.numMascotas,
      "precioFinal": reserva.precioFinal,
      "estado": "Cancelado",
      "comision": reserva.comision,
      "gananciaAnfitrion": reserva.gananciaAnfitrion,
      "sitio": reserva.sitio.id,
    };

    // Realiza las solicitudes HTTP respectivas
    var respuesta = await http.post(
      Uri.parse(url),
      headers: dataHeader,
      body: json.encode(dataBody),
    );

    var respuesta2 = await http.put(
      Uri.parse("$url2${reserva.id}/"),
      headers: dataHeader2,
      body: json.encode(dataBody2),
    );

    var respuesta3 = await http.delete(Uri.parse("$url3${pagoA.id}/"));

    // Verifica que todas las solicitudes hayan sido exitosas
    if (respuesta.statusCode == 201 &&
        respuesta2.statusCode == 200 &&
        respuesta3.statusCode == 204) {
      // Navega a la pantalla de inicio después de cancelar la reserva
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => HomeScreenPage(
            themeManager: themeManager,
          ),
        ),
      );
    }
  }

  // Función para cancelar una reserva
  cancelarReserva(ReservaModel reserva, ThemeManager themeManager,
      PagoAnfitrionModel pagoA) async {
    String url = "";

    String url2 = "";

    String url3 = "";

    String url4 = "";

    url = "$djangoApi/api/Devolucion/";

    url2 = "$djangoApi/api/Reservas/";

    url3 = "$djangoApi/api/Multas/";

    url4 = "$djangoApi/api/PagoAnfitrion/";

    // Encabezados y cuerpo de la solicitud HTTP para la devolución
    final Map<String, String> dataHeader = {
      'Content-Type': 'application/json; charset-UTF=8',
    };

    final Map<String, dynamic> dataBody = {
      "fechaRadicado":
          "${DateTime.now().year}-${DateTime.now().month.toString().padLeft(2, '0')}-${DateTime.now().day.toString().padLeft(2, '0')}",
      "fechaPago": null,
      "valor": (reserva.precioFinal - (reserva.precioFinal * 0.2)).toInt(),
      "estado": "Pendiente",
      "reserva": reserva.id,
    };

    // Encabezados y cuerpo de la solicitud HTTP para las multas
    final Map<String, String> dataHeader3 = {
      'Content-Type': 'application/json; charset-UTF=8',
    };

    final Map<String, dynamic> dataBody3 = {
      "fecha":
          "${DateTime.now().year}-${DateTime.now().month.toString().padLeft(2, '0')}-${DateTime.now().day.toString().padLeft(2, '0')}",
      "valor": (reserva.precioFinal * 0.2).toInt(),
      "valorDevolucion":
          (reserva.precioFinal - (reserva.precioFinal * 0.2)).toInt(),
      "reserva": reserva.id,
    };

    // Encabezados y cuerpo de la solicitud HTTP para la actualización de la reserva
    final Map<String, String> dataHeader2 = {
      'Content-Type': 'application/json; charset-UTF=8',
    };

    final Map<String, dynamic> dataBody2 = {
      "usuario": reserva.usuario,
      "fecha": reserva.fecha,
      "fechaEntrada": reserva.fechaEntrada,
      "fechaSalida": reserva.fechaSalida,
      "numHuespedes": reserva.numHuespedes,
      "numAdultos": reserva.numAdultos,
      "numNinos": reserva.numNinos,
      "numBebes": reserva.numBebes,
      "numMascotas": reserva.numMascotas,
      "precioFinal": reserva.precioFinal,
      "estado": "Cancelado",
      "comision": reserva.comision,
      "gananciaAnfitrion": reserva.gananciaAnfitrion,
      "sitio": reserva.sitio.id,
    };

    // Realiza las solicitudes HTTP respectivas
    var respuesta = await http.post(
      Uri.parse(url),
      headers: dataHeader,
      body: json.encode(dataBody),
    );

    var respuesta3 = await http.post(
      Uri.parse(url3),
      headers: dataHeader3,
      body: json.encode(dataBody3),
    );

    var respuesta2 = await http.put(
      Uri.parse("$url2${reserva.id}/"),
      headers: dataHeader2,
      body: json.encode(dataBody2),
    );

    var respuesta4 = await http.delete(Uri.parse("$url4${pagoA.id}/"));

    // Verifica que todas las solicitudes hayan sido exitosas
    if (respuesta.statusCode == 201 &&
        respuesta2.statusCode == 200 &&
        respuesta3.statusCode == 201 &&
        respuesta4.statusCode == 204) {
      // Navega a la pantalla de inicio después de cancelar la reserva
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => HomeScreenPage(
            themeManager: themeManager,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // Modal para cancelar la reserva
    return AlertDialog(
      title: Text(
        texts.reservas_todo.cancelacionReserva.question1,
        textAlign: TextAlign.center,
      ),
      content: SizedBox(
        height: 250,
        width: 400,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: defaultPadding,
              ),
              Center(
                child: Text(
                  texts.reservas_todo.cancelacionReserva.summery,
                  style: const TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Image.asset(
                "assets/images/logo.png",
                width: 150,
                height: 150,
              )
            ],
          ),
        ),
      ),
      actions: [
        // acciones del modal
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(texts.buscador.Step2.Back)),
            FutureBuilder(
                future:
                    getPagosAnfitrion(), // Se espera la obtención de pagos del anfitrión
                builder: (context,
                    AsyncSnapshot<List<PagoAnfitrionModel>> pagoAnfi) {
                  // Si la conexión está en espera, muestra un indicador de carga
                  if (pagoAnfi.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ElevatedButton(
                      onPressed: () async {
                        // Itera sobre los pagos del anfitrión obtenidos
                        for (var p = 0; p < pagoAnfi.data!.length; p++) {
                          // Verifica si el ID de la reserva coincide con el de la reserva actual
                          if (pagoAnfi.data![p].reserva.id ==
                              widget.reserva.id) {
                            // Comprueba si han pasado al menos 2 días desde la fecha de la reserva
                            if (DateTime.now()
                                    .difference(
                                        DateTime.parse(widget.reserva.fecha))
                                    .inDays >=
                                2) {
                              // Ejecuta la función para cancelar la reserva
                              cancelarReserva(widget.reserva,
                                  widget.themeManager, pagoAnfi.data![p]);
                            } else {
                              // Ejecuta la función para cancelar la reserva de manera oportuna
                              cancelarReservaOportuna(widget.reserva,
                                  widget.themeManager, pagoAnfi.data![p]);
                            }
                          }
                        }
                      },
                      child: Text(texts.categories.cancel));
                }),
          ],
        ),
      ],
    );
  }
}
