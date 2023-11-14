import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:proyecto_final/models/ReservaSitioModel.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

import '../../../../../generated/translations.g.dart';

// Tabla de todas las reservas finalizadas que se han hecho en los sitios del anfitrión

class ReservaFinalizadaA extends StatelessWidget {
  const ReservaFinalizadaA({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    final texts = Translations.of(context);

    List ReservaAnfFinalList = [
      ReservaAnfFinalModel(
        icon: "assets/icons/finalizado.svg",
        sitio: texts.myActiveReservations.userRservation.siteone,
        usuario: "Eduardo Reyes",
        fecha: "27-02-2021",
      ),
      ReservaAnfFinalModel(
        icon: "assets/icons/finalizado.svg",
        sitio: texts.myActiveReservations.userRservation.siteone,
        usuario: "Eduardo Reyes",
        fecha: "27-02-2021",
      ),
      ReservaAnfFinalModel(
        icon: "assets/icons/finalizado.svg",
        sitio: texts.myActiveReservations.userRservation.siteone,
        usuario: "Eduardo Reyes",
        fecha: "27-02-2021",
      ),
      ReservaAnfFinalModel(
        icon: "assets/icons/finalizado.svg",
        sitio: texts.myActiveReservations.userRservation.siteone,
        usuario: "Eduardo Reyes",
        fecha: "27-02-2021",
      ),
      ReservaAnfFinalModel(
        icon: "assets/icons/finalizado.svg",
        sitio: texts.myActiveReservations.userRservation.siteone,
        usuario: "Eduardo Reyes",
        fecha: "27-02-2021",
      ),
      ReservaAnfFinalModel(
        icon: "assets/icons/finalizado.svg",
        sitio: texts.myActiveReservations.userRservation.siteone,
        usuario: "Eduardo Reyes",
        fecha: "27-02-2021",
      ),
      ReservaAnfFinalModel(
        icon: "assets/icons/finalizado.svg",
        sitio: texts.myActiveReservations.userRservation.siteone,
        usuario: "Eduardo Reyes",
        fecha: "27-02-2021",
      ),
    ];

    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: isDark ? secondaryColor : const Color(0xFFFF2F0F2),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            texts.completedReservationsForMySites,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: InteractiveViewer(
              constrained: false,
              scaleEnabled: false,
              child: DataTable(
                columnSpacing: defaultPadding,
                // minWidth: 600,
                columns: [
                  DataColumn(
                    label: Text(texts.myActiveReservations.site),
                  ),
                  DataColumn(
                    label: Text(texts.myActiveReservations.user),
                  ),
                  DataColumn(
                    label: Text(texts.myActiveReservations.date),
                  ),
                  DataColumn(
                    label: Text(""),
                  ),
                  DataColumn(
                    label: Text(""),
                  ),
                ],
                rows: List.generate(
                  ReservaAnfFinalList.length,
                  (index) => ReservaFaDataRow(ReservaAnfFinalList[index], context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow ReservaFaDataRow(ReservaAnfFinalModel reservaFInfo, BuildContext context) {
  bool isDark = Theme.of(context).brightness == Brightness.dark;
  final texts = Translations.of(context);
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              reservaFInfo.icon!,
              height: 30,
              width: 30,
              color: Colors.orange,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(reservaFInfo.sitio!),
            ),
          ],
        ),
      ),
      DataCell(Text(reservaFInfo.usuario!)),
      DataCell(Text(reservaFInfo.fecha!)),
      DataCell(ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(primaryColor)),
        child: Text(texts.myActiveReservations.toSee),
      )),
      DataCell(IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/pdf.svg",
            color: isDark ? Colors.white : primaryColor,
            width: 20,
            height: 20,
          ))),
    ],
  );
}
