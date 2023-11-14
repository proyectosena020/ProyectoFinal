
import 'package:flutter/material.dart';
import 'package:proyecto_final/theme/theme_constants.dart';

class AnfitrionDetails extends StatelessWidget {
  const AnfitrionDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Estadía en granja en Cambuí, Brasil",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Row(
            children: [
              Text("4 huespedes"),
              Text(" - "),
              Text("1 habitación"),
              Text(" - "),
              Text("2 camas"),
              Text(" - "),
              Text("1 baño"),
            ],
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.network(
                  "https://a0.muscache.com/im/pictures/user/3560e9cc-db37-4300-bbf9-fb804a235acd.jpg?im_w=240",
                  width: 50,
                  height: 50,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                width: defaultPadding,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Anfitrión: Taynã",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Text(
                    "4 años en el aplicativo",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}