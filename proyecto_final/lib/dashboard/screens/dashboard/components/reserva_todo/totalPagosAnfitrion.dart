import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proyecto_final/generated/translations.g.dart';
import 'package:proyecto_final/models/PagosAnfiModel.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

// Tabla de los pagos pendientes o realizados a los anfitriones

class PagosTotalAnf extends StatelessWidget {
  const PagosTotalAnf({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    final texts = Translations.of(context);

    List PagosTotalAnfiList = [
      PagosTotalAnfiModel(
          icon: "assets/icons/pagos.svg",
          usuario: "Eduardo Reyes",
          sitio: texts.myActiveReservations.userRservation.siteone,
          fecha: "27-02-2021"),
      PagosTotalAnfiModel(
          icon: "assets/icons/pagos.svg",
          usuario: "Eduardo Reyes",
          sitio: texts.myActiveReservations.userRservation.siteone,
          fecha: "27-02-2021"),
      PagosTotalAnfiModel(
          icon: "assets/icons/pagos.svg",
          usuario: "Eduardo Reyes",
          sitio: texts.myActiveReservations.userRservation.siteone,
          fecha: "27-02-2021"),
      PagosTotalAnfiModel(
          icon: "assets/icons/pagos.svg",
          usuario: "Eduardo Reyes",
          sitio: texts.myActiveReservations.userRservation.siteone,
          fecha: "27-02-2021"),
      PagosTotalAnfiModel(
          icon: "assets/icons/pagos.svg",
          usuario: "Eduardo Reyes",
          sitio: texts.myActiveReservations.userRservation.siteone,
          fecha: "27-02-2021"),
      PagosTotalAnfiModel(
          icon: "assets/icons/pagos.svg",
          usuario: "Eduardo Reyes",
          sitio: texts.myActiveReservations.userRservation.siteone,
          fecha: "27-02-2021"),
      PagosTotalAnfiModel(
          icon: "assets/icons/pagos.svg",
          usuario: "Eduardo Reyes",
          sitio: texts.myActiveReservations.userRservation.siteone,
          fecha: "27-02-2021"),
      PagosTotalAnfiModel(
          icon: "assets/icons/pagos.svg",
          usuario: "Eduardo Reyes",
          sitio: texts.myActiveReservations.userRservation.siteone,
          fecha: "27-02-2021"),
      PagosTotalAnfiModel(
          icon: "assets/icons/pagos.svg",
          usuario: "Eduardo Reyes",
          sitio: texts.myActiveReservations.userRservation.siteone,
          fecha: "27-02-2021"),
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
            texts.allPaymentsMadeToHosts,
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
                    label: Text(texts.dateFiled),
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
                  PagosTotalAnfiList.length,
                  (index) => PagosDataRow(PagosTotalAnfiList[index], context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow PagosDataRow(PagosTotalAnfiModel PagosInfo, BuildContext context) {
  bool isDark = Theme.of(context).brightness == Brightness.dark;
  final texts = Translations.of(context);
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              PagosInfo.icon!,
              height: 30,
              width: 30,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(PagosInfo.sitio!),
            ),
          ],
        ),
      ),
      DataCell(Text(PagosInfo.usuario!)),
      DataCell(Text(PagosInfo.fecha!)),
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
