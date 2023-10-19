import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListItem2 {
  final String text;
  final Icon icon;
  final TextStyle textStyle;

  ListItem2({required this.text, required this.icon,required this.textStyle });
}
class Titulos {
  final String text;

  Titulos({required this.text});
}

final titulos = [
  Titulos(
      text: "Baño"
  ),
  Titulos(
      text: "Dormitorio y lavadero"
  ),
];


void showItemInfo(BuildContext context, String title, String info) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(title),
        content: Text(info),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Cerrar"),
          ),
        ],
      );
    },
  );
}


class ListItem {
  final String text;
  final Icon icon;
  final String subtitle;
  final TextStyle textStyle;
  final VoidCallback? onTap;
  final String additionalInfo;

  ListItem({
    required this.text,
    required this.icon,
    required this.subtitle,
    required this.textStyle,
    this.onTap,
    required this.additionalInfo,
  });
}

final listItems = [
  ListItem(
    text: "Anfitrion: BlueAruba",
    icon: const Icon(Icons.person),
    subtitle: "SuperAnfitrion: 8 años anfitrionando",
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
    additionalInfo: "Mas informacion sobre BlueAruba",
    onTap: () {

    }
  ),
  ListItem(
    text: "Zona de trabajo",
    icon: Icon(Icons.work),
    subtitle: "Una zona comun con wifi que es ideal para trabajar",
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ), additionalInfo: ''
  ),
  ListItem(
      text: "blueAruba tiene la categoria de Superanfitrion",
    icon: Icon(Icons.book),
    subtitle: "Los Superanfitriones tienen mucha experiencia, cuentan con valoraciones excelentes y se esfuerzan al máximo para ofrecerles a los huéspedes estadías maravillosas.",
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ), additionalInfo: ''
  ),
  ListItem(
    text: "Ubicación fantástica",
    icon: Icon(Icons.map),
    subtitle: "El 100% de los últimos huéspedes han valorado con 5 estrellas la ubicación.",
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ), additionalInfo: ''
  ), // Agrega más elementos de lista según sea necesario
];



List<String> texts = [
  "Monetization",
  "Pie Chart",
  "Flag",
  "Notification",
  "Savings",
  "Cloud",
  "Nightlight",
  "Assignment",
  "Location",
  "Settings",
  "Rocket",
  "Backpack",
  "Person",
  "Done All",
  "Search",
  "Extension",
  "Bluetooth",
  "Favorite",
  "Lock",
  "Bookmark",
];

List<IconData> icons = [
  Icons.monetization_on,
  Icons.pie_chart,
  Icons.flag,
  Icons.notifications,
  Icons.savings,
  Icons.cloud,
  Icons.nightlight_round,
  Icons.assignment,
  Icons.location_pin,
  Icons.settings,
  Icons.rocket,
  Icons.backpack,
  Icons.person,
  Icons.done_all,
  Icons.search,
  Icons.extension,
  Icons.bluetooth,
  Icons.favorite,
  Icons.lock,
  Icons.bookmark,
];

