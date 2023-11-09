import 'package:flutter/material.dart';
import 'package:proyecto_final/dashboard/screens/dashboard/components/reserva_todo/Sitio.dart';
import 'package:proyecto_final/generated/translations.g.dart';
import 'package:proyecto_final/models/TodosSitiosModel.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

// Contenedor el cual encapsula la vista previa de todos los sitios que hay en el aplicativo

class Sitios extends StatelessWidget {
  const Sitios({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    bool isDark = Theme.of(context).brightness == Brightness.dark;
    final texts = Translations.of(context);
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: isDark?secondaryColor:const Color(0xFFFF2F0F2),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            texts.allSites,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 435,
            width: 400,
            child: Container(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: TodosSitiosList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return SitioCard(sitio: TodosSitiosList[index]);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
