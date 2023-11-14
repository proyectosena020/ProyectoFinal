import 'package:flutter/material.dart';
import 'package:proyecto_final/responsive.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

class IconsMobile extends StatelessWidget {
  const IconsMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 60, right: 60),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_outlined,
              color: primaryColor,
            ),
          ),
          const Text("Compartir"),
          const SizedBox(
            width: defaultPadding,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline,
              color: primaryColor,
            ),
          ),
          const Text("Favoritos"),
        ],
      ),
    );
  }
}

class TitleDetails extends StatelessWidget {
  const TitleDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 60, right: 60),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Text(
            "🌳⛰️🌄Chalé | Olivais Santa Clara Lodge |Sul de Minas",
            style:
                Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 30),
          )),
          if (Responsive.isDesktop(context))
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share_outlined,
                    color: primaryColor,
                  ),
                ),
                const Text("Compartir"),
                const SizedBox(
                  width: defaultPadding,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline,
                    color: primaryColor,
                  ),
                ),
                const Text("Favoritos"),
              ],
            )
        ],
      ),
    );
  }
}