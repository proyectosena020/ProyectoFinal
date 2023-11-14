import 'package:flutter/material.dart';
import 'package:proyecto_final/generated/translations.g.dart';
import 'package:proyecto_final/models/TodosSitiosModel.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

// diseño de la card de vista previa de todos los sitios del aplicativo

class SitioCard extends StatelessWidget {

  final TodosSitiosModel sitio;

  const SitioCard({
    Key? key, required this.sitio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    final texts = Translations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: primaryColor, blurRadius: 10, offset: Offset(5, 5))
              ]),
          child: Column(
            children: <Widget>[
              Container(
                width: 400,
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: NetworkImage(
                        sitio.imagen),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              sitio.titulo,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: isDark ? Colors.white : primaryColor,
                ),
                Text(
                  sitio.calificacion,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "\$"+sitio.precio,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(texts.site.nights),
          ],
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: primaryColor,
                    offset: Offset(
                      2.0,
                      2.0,
                    ),
                    blurRadius: 3.0,
                    spreadRadius: 1.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: primaryColor,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
                color: Colors.white,
              ),
              child: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.delete, size: 25, color: Colors.black)),
            ),
          ],
        ),
        const SizedBox(
          height: defaultPadding,
        )
      ],
    );
  }
}
