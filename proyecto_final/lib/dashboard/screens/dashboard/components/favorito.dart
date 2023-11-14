import 'package:flutter/material.dart';
import 'package:proyecto_final/models/FavoritoModel.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

import '../../../../generated/translations.g.dart';

// Card donde estaran los sitios favoritos del usuario

class FavoritoCard extends StatelessWidget {

  final FavoritoModel favorito;

  const FavoritoCard({
    Key? key, required this.favorito,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

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
                        favorito.imagen),
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
              favorito.titulo,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: isDark ? Colors.white : primaryColor,
                ),
                Text(
                  favorito.calificacion,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "\$"+favorito.precio,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(Translations.of(context).site.nights),
          ],
        ),
      ],
    );
  }
}
