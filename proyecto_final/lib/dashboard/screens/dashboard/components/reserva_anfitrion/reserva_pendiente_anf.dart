import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:proyecto_final/models/ReservaSitioModel.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

import '../../../../../generated/translations.g.dart';

// Tabla de todas las reservas pendientes que se han hecho en los sitios del anfitrión

class ReservaPendienteA extends StatelessWidget {
  const ReservaPendienteA({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    final texts = Translations.of(context);
    List ReservaAnfPendList = [
      ReservaAnfPendModel(
        icon: "assets/icons/pendiente.svg",
        sitio: texts.myActiveReservations.userRservation.siteone,
        usuario: "Eduardo Reyes",
        fecha: "27-02-2021",
      ),
      ReservaAnfPendModel(
        icon: "assets/icons/pendiente.svg",
        sitio: texts.myActiveReservations.userRservation.siteone,
        usuario: "Eduardo Reyes",
        fecha: "27-02-2021",
      ),
      ReservaAnfPendModel(
        icon: "assets/icons/pendiente.svg",
        sitio: texts.myActiveReservations.userRservation.siteone,
        usuario: "Eduardo Reyes",
        fecha: "27-02-2021",
      ),
      ReservaAnfPendModel(
        icon: "assets/icons/pendiente.svg",
        sitio: texts.myActiveReservations.userRservation.siteone,
        usuario: "Eduardo Reyes",
        fecha: "27-02-2021",
      ),
      ReservaAnfPendModel(
        icon: "assets/icons/pendiente.svg",
        sitio: texts.myActiveReservations.userRservation.siteone,
        usuario: "Eduardo Reyes",
        fecha: "27-02-2021",
      ),
      ReservaAnfPendModel(
        icon: "assets/icons/pendiente.svg",
        sitio: texts.myActiveReservations.userRservation.siteone,
        usuario: "Eduardo Reyes",
        fecha: "27-02-2021",
      ),
      ReservaAnfPendModel(
        icon: "assets/icons/pendiente.svg",
        sitio: texts.myActiveReservations.userRservation.siteone,
        usuario: "Eduardo Reyes",
        fecha: "27-02-2021",
      ),
      ReservaAnfPendModel(
        icon: "assets/icons/pendiente.svg",
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
            texts.pendingReservationsForMySites,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            width: double.infinity,
            height: 300,
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
                  ReservaAnfPendList.length,
                  (index) => ReservaPaDataRow(ReservaAnfPendList[index], context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow ReservaPaDataRow(ReservaAnfPendModel reservaPInfo, BuildContext context) {
  bool isDark = Theme.of(context).brightness == Brightness.dark;
  final texts = Translations.of(context);
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              reservaPInfo.icon!,
              height: 30,
              width: 30,
              color: const Color(0xFF007EE5),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(reservaPInfo.sitio!),
            ),
          ],
        ),
      ),
      DataCell(Text(reservaPInfo.usuario!)),
      DataCell(Text(reservaPInfo.fecha!)),
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
