import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proyecto_final/models/ReservaSitioModel.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

import '../../../../../generated/translations.g.dart';

// Tabla de todas las reservas activas que se han hecho en los sitios del anfitrión

class ReservaActivaA extends StatelessWidget {
  const ReservaActivaA({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    final texts = Translations.of(context);

    List ReservaAnfActivaList = [
      ReservaAnfActivaModel(
        icon: "assets/icons/check.svg",
        usuario: "Eduardo Reyes",
        sitio: texts.myActiveReservations.userRservation.siteone,
        fecha: "27-02-2021",
      ),
      ReservaAnfActivaModel(
        icon: "assets/icons/check.svg",
        usuario: "Eduardo Reyes",
        sitio: texts.myActiveReservations.userRservation.siteone,
        fecha: "27-02-2021",
      ),
      ReservaAnfActivaModel(
        icon: "assets/icons/check.svg",
        usuario: "Eduardo Reyes",
        sitio: texts.myActiveReservations.userRservation.siteone,
        fecha: "27-02-2021",
      ),
      ReservaAnfActivaModel(
        icon: "assets/icons/check.svg",
        usuario: "Eduardo Reyes",
        sitio: texts.myActiveReservations.userRservation.siteone,
        fecha: "27-02-2021",
      ),
      ReservaAnfActivaModel(
        icon: "assets/icons/check.svg",
        usuario: "Eduardo Reyes",
        sitio: texts.myActiveReservations.userRservation.siteone,
        fecha: "27-02-2021",
      ),
      ReservaAnfActivaModel(
        icon: "assets/icons/check.svg",
        usuario: "Eduardo Reyes",
        sitio: texts.myActiveReservations.userRservation.siteone,
        fecha: "27-02-2021",
      ),
      ReservaAnfActivaModel(
        icon: "assets/icons/check.svg",
        usuario: "Eduardo Reyes",
        sitio: texts.myActiveReservations.userRservation.siteone,
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
            texts.activeReservationsForMySites,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 300,
            width: double.infinity,
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
                  ReservaAnfActivaList.length,
                  (index) => ReservaAaDataRow(ReservaAnfActivaList[index], context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow ReservaAaDataRow(ReservaAnfActivaModel reservaAInfo, BuildContext context) {
  bool isDark = Theme.of(context).brightness == Brightness.dark;
  final texts = Translations.of(context);
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              reservaAInfo.icon!,
              height: 30,
              width: 30,
              color: Colors.green,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(reservaAInfo.sitio!),
            ),
          ],
        ),
      ),
      DataCell(Text(reservaAInfo.usuario!)),
      DataCell(Text(reservaAInfo.fecha!)),
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