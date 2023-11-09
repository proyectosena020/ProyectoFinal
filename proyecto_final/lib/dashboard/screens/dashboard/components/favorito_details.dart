import 'package:flutter/material.dart';
import 'package:proyecto_final/dashboard/screens/dashboard/components/favorito.dart';
import 'package:proyecto_final/models/FavoritoModel.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

import '../../../../generated/translations.g.dart';

// Contenedor el cual almacenara las cards de los sitios favoritos del usuario

class FavoritoDetails extends StatelessWidget {
  const FavoritoDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    final texts = Translations.of(context);
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: isDark ? secondaryColor : const Color(0xFFFF2F0F2),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Container(
        height: 1250,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                texts.favorites.favoriteSites,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: defaultPadding),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: FavoritoList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return FavoritoCard(favorito: FavoritoList[index],);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
