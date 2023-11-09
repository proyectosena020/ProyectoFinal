import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:proyecto_final/models/MultaModel.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

import '../../../../../generated/translations.g.dart';

// Tabla de todos los pagos pendientes o realizados a nombre del anfitrión

class Multas extends StatelessWidget {
  const Multas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    final texts = Translations.of(context);
    List MultaList = [
      MultaModel(
          icon: "assets/icons/multa.svg",
          sitio: texts.fines.site,
          reserva: "20",
          fecha: "2-11-2023",
          valor: "250.000"
      ),
      MultaModel(
          icon: "assets/icons/multa.svg",
          sitio: texts.fines.site,
          reserva: "20",
          fecha: "2-11-2023",
          valor: "250.000"),
      MultaModel(
          icon: "assets/icons/multa.svg",
          sitio: texts.fines.site,
          reserva: "20",
          fecha: "2-11-2023",
          valor: "250.000"),
      MultaModel(
          icon: "assets/icons/multa.svg",
          sitio: texts.fines.site,
          reserva: "20",
          fecha: "2-11-2023",
          valor: "250.000"),
      MultaModel(
          icon: "assets/icons/multa.svg",
          sitio: texts.fines.site,
          reserva: "20",
          fecha: "2-11-2023",
          valor: "250.000"),
      MultaModel(
          icon: "assets/icons/multa.svg",
          sitio: texts.fines.site,
          reserva: "20",
          fecha: "2-11-2023",
          valor: "250.000"),
      MultaModel(
          icon: "assets/icons/multa.svg",
          sitio: texts.fines.site,
          reserva: "20",
          fecha: "2-11-2023",
          valor: "250.000"),
      MultaModel(
          icon: "assets/icons/multa.svg",
          sitio: texts.fines.site,
          reserva: "20",
          fecha: "2-11-2023",
          valor: "250.000"),
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
            texts.fines.myFines,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 300,
            width: double.infinity,
            child: InteractiveViewer(
              scaleEnabled: false,
              constrained: false,
              child: DataTable(
                columnSpacing: defaultPadding,
                // minWidth: 600,
                columns: [
                  DataColumn(
                    label: Text(texts.myActiveReservations.site),
                  ),
                  DataColumn(
                    label: Text(texts.fines.reservation),
                  ),
                  DataColumn(
                    label: Text(texts.myActiveReservations.date),
                  ),
                  DataColumn(
                    label: Text(texts.fines.worth),
                  ),
                  DataColumn(
                    label: Text(""),
                  ),
                  DataColumn(
                    label: Text(""),
                  ),
                ],
                rows: List.generate(
                  MultaList.length,
                  (index) => MisMultasDataRow(MultaList[index], context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow MisMultasDataRow(MultaModel misMultasInfo, BuildContext context) {
  bool isDark = Theme.of(context).brightness == Brightness.dark;
  final texts = Translations.of(context);
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              misMultasInfo.icon!,
              height: 30,
              width: 30,
              color: Colors.amber,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(misMultasInfo.sitio!),
            ),
          ],
        ),
      ),
      DataCell(Text(misMultasInfo.reserva!)),
      DataCell(Text(misMultasInfo.fecha!)),
      DataCell(Text(misMultasInfo.valor!)),
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
