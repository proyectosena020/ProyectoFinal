import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:proyecto_final/generated/translations.g.dart';
import 'package:proyecto_final/models/ReservaUsuarioModel.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

// Tabla de las reservas canceladas del usuario

class ReservaCanceladaU extends StatelessWidget {
  const ReservaCanceladaU({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    final texts = Translations.of(context);
    List ReservaUsuCancelList = [
      ReservaUsuCancelModel(
        icon: "assets/icons/cancel.svg",
        sitio: texts.myActiveReservations.userRservation.siteone,
        usuario: "Eduardo Reyes",
        fecha: "27-02-2021",
      ),
      ReservaUsuCancelModel(
        icon: "assets/icons/cancel.svg",
        sitio: texts.myActiveReservations.userRservation.siteone,
        usuario: "Eduardo Reyes",
        fecha: "27-02-2021",
      ),
      ReservaUsuCancelModel(
        icon: "assets/icons/cancel.svg",
        sitio: texts.myActiveReservations.userRservation.siteone,
        usuario: "Eduardo Reyes",
        fecha: "27-02-2021",
      ),
      ReservaUsuCancelModel(
        icon: "assets/icons/cancel.svg",
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
            texts.reservaCancel.myCanceledReservations,
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
                  DataColumn(
                    label: Text(""),
                  ),
                  DataColumn(
                    label: Text(""),
                  ),
                ],
                rows: List.generate(
                  ReservaUsuCancelList.length,
                  (index) => ReservaCuDataRow(ReservaUsuCancelList[index], context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow ReservaCuDataRow(ReservaUsuCancelModel reservaCInfo, BuildContext context) {
  bool isDark = Theme.of(context).brightness == Brightness.dark;
  final texts = Translations.of(context);
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              reservaCInfo.icon!,
              height: 30,
              width: 30,
              color: Colors.red,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(reservaCInfo.sitio!),
            ),
          ],
        ),
      ),
      DataCell(Text(reservaCInfo.usuario!)),
      DataCell(Text(reservaCInfo.fecha!)),
      DataCell(ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(primaryColor)),
        child: Text(texts.myActiveReservations.toSee),
      )),
      DataCell(ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(primaryColor)),
        child: Text(texts.myActiveReservations.toUpdate),
      )),
      DataCell(ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(primaryColor)),
        child: Text(texts.myActiveReservations.cancel),
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