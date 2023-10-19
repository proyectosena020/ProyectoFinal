import 'package:flutter/material.dart';
import 'package:proyecto_final/dashboard/screens/dashboard/components/favorito.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

// Contenedor el cual almacenara las cards de los sitios favoritos del usuario

class FavoritoDetails extends StatelessWidget {
  const FavoritoDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

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
              const Text(
                "Sitios Favoritos",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: defaultPadding),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const FavoritoCard();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
